package foo;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.Authenticator;
import java.net.PasswordAuthentication;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class Crawler {

	private static final String SENIA = "notpass";
	private static final String USERNAME = "dhsv";
	private static final String PROXY_PORT = "9150";
	private static final String PROXY_URL = "127.0.0.1";
	private static final String CHROME_SUFFIX = ".chrome.txt";
	private static final String USERAGENT = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36";
	private static final int TIMEOUT = 180000;
	private static final String ARIA_SUFFIX = ".aria.txt";
	private static final String TENON_SUFFIX = ".txt";
	private static Pattern pattern = Pattern.compile("( aria-[^ ])|( role=)");

	/**
	 * @param args
	 * @throws InterruptedException
	 * @throws IOException
	 */
	public static void main(String[] args) throws InterruptedException,
			IOException {

//		final String authUser = USERNAME;
//		final String authPassword = SENIA;
//
//		Authenticator.setDefault(new Authenticator() {
//			public PasswordAuthentication getPasswordAuthentication() {
//				return new PasswordAuthentication(authUser, authPassword
//						.toCharArray());
//			}
//		});

//		System.setProperty("http.proxyHost", PROXY_URL);
//		System.setProperty("http.proxyPort", PROXY_PORT);
		System.setProperty("socksProxyHost", PROXY_URL);
		System.setProperty("socksProxyPort", PROXY_PORT);

		// curl -X POST -H Content-Type:application/x-www-form-urlencoded -H
		// Cache-Control:no-cache -d
		// 'url=http://google.com.br&key=0a8118b2fc68177c6ae2fd084120f0fc'
		// http://tenon.io/api/
		String[] sites = { 
				"google.com.br", "facebook.com", "google.com",
				"youtube.com", "uol.com.br", "folha.uol.com.br",
				"esporte.uol.com.br", "noticias.uol.com.br",
				"televisao.uol.com.br", "globo.com", "g1.globo.com",
				"globoesporte.globo.com", "oglobo.globo.com", "ego.globo.com",
				"yahoo.com", "mercadolivre.com.br", "wikipedia.org",
				"twitter.com", "msn.com", "aliexpress.com", "abril.com.br",
				"veja.abril.com.br", "exame.abril.com.br", "info.abril.com.br",
				"vejasp.abril.com.br", "mdemulher.abril.com.br", "xvideos.com",
				"ig.com.br", 
				"baixaki.com.br", "odia.ig.com.br",
				"linkedin.com", "terra.com.br", "olx.com.br", "instagram.com",
				"megaoferta.net", "amazon.com", "wordpress.com",
				"caixa.gov.br", "itau.com.br", 
				"americanas.com.br",
				"walmart.com.br", "microsoft.com", "netshoes.com.br",
				"correios.com.br", "buscape.com.br", "megafilmeshd.net",
				"r7.com", "bradesco.com.br",
				"www.fazenda.sp.gov.br", "prefeitura.sp.gov.br",
				"fazenda.gov.br", "receita.fazenda.gov.br",
				"www.nfe.fazenda.gov.br", "tesouro.fazenda.gov.br", "ask.com",
				
				"reclameaqui.com.br", "bing.com", "bb.com.br", "pinterest.com",
				"portaleducacao.com.br", "techtudo.com.br", "submarino.com.br",
				"paypal.com", "apple.com", "extra.com.br", "4shared.com",
				"estadao.com.br", "stackoverflow.com", "letras.mus.br",
				"vagalume.com.br", 
				
				"ebay.com", "filmesonlinegratis.net",
				"clicrbs.com.br", "alibaba.com", "blogosfera.uol.com.br",
				"tecmundo.com.br", "vivo.com.br",
				"dropbox.com", "bol.uol.com.br", "whatsapp.com", "oi.com.br",
				"booking.com", "clickjogos.com.br", "kickass.to",
				"magazineluiza.com.br", 
				"decolar.com", "imdb.com",
				"slideshare.net", "xhamster.com", "casasbahia.com.br",
				
				"livrariasaraiva.com.br", "pontofrio.com.br",
				"parperfeito.com.br", 
				"santander.com.br",
				"economia.uol.com.br", "catracalivre.com.br",
				"hotelurbano.com.br", "espn.uol.com.br",
				 "pagseguro.uol.com.br"
				, "badoo.com"
				,"jusbrasil.com.br"
				};

		Map<String, String> cookies = new HashMap<String, String>();
		cookies.put("tenonDemo", "T2QlHCr9JlqmMKvbJ");
		cookies.put("tenonDate", "2015-04-13+12%3A20%3A43");
		cookies.put("user_segment", "Prospect");
		cookies.put("PHPSESSID", "o8fqkuf94jmbcosvhi4l02kfd5");
		cookies.put("userKey", "r74cMdmCwKyNsw1qv");
		cookies.put("userTimeout", new Date().getTime() + "");

		for (String site : sites) {
			System.out.println(site);
			System.out.println(new Date());
			if (1 == 2)
				adicionarCategorias(site);
			
			try {
				if (!new File(site + TENON_SUFFIX).exists()) {
					tenonio(site);
				}
			} catch (Exception e) {
				PrintWriter out = new PrintWriter(site + "DEUERROtenon.txt");
				e.printStackTrace(out);
				out.close();
			}

			try {
			
				if (!new File(site + ARIA_SUFFIX).exists()) {
					aria(site);
				}
			} catch (Exception e) {
				PrintWriter out = new PrintWriter(site + "DEUERROaria.txt");
				e.printStackTrace(out);
				out.close();
			}
			
			try {
				if (!new File(site + CHROME_SUFFIX).exists()) {
					chrome(site);
				}
			} catch (Exception e) {
				PrintWriter out = new PrintWriter(site + "DEUERROchrome.txt");
				e.printStackTrace(out);
				out.close();
			}
			

		}

	}

	private static void adicionarCategorias(String site) throws IOException, InterruptedException {
		System.out.println(site);
		try {
			Document doc = Jsoup
					.connect("http://www.similarweb.com/website/" + site)
					.timeout(TIMEOUT)
					.userAgent(USERAGENT)
					.header("Cookie",
							"sgID=5a8152f8-8f76-ff87-dd79-864a2cba38de; user_num=nowset; _vis_opt_s=1%7C; _vwo_uuid=D08DD98EF184F805D4E52F7FF00FB671; _vis_opt_exp_126_combi=1; __utma=107333120.1682239956.1430160431.1430160431.1430160431.1; __utmc=107333120; __utmz=107333120.1430160431.1.1.utmcsr=serp|utmgclid=CO33h-KSl8UCFdgcgQodG1cAkA|utmccn=gs_api_comp_alexa_t3_s_pbm|utmcmd=(not%20set)|utmctr=(not%20provided); _vis_opt_test_cookie=1; _vis_opt_exp_126_goal_1=1; .SGTOKEN=H80NLaud1kcMWzv3zFrPaFRqs58WrGlPvZRTQhV0h5YAkjdscO6jYk0Uk6JF8oEDUUka2fnxjgRTjdth--r1D031ktMWf-vxg8KB7dg-wVtG42oQ3tfwNNN0HhtFKnDsy3HjIg8eqHRWDFIqRzviLqiPp5y4R3evdkt6SGyG5H_g-cxdXO0oTB1u6PvmyciYDZiTI1bMf-9QtRHuhDqX4ZjY19zFx6ED1ZbSNuTh9UiYB33JqMn6xhc5pOoLfr8L; loyal-user=%7B%22date%22%3A%222015-04-27T19%3A06%3A23.161Z%22%2C%22isLoyal%22%3Atrue%7D; _gat=1; _pk_ref.1.fd33=%5B%22%22%2C%22%22%2C1430334733%2C%22https%3A%2F%2Fwww.google.com.br%2F%22%5D; adOtr=1dMZ0; UTGv2=h4f577c17e78c7f0233bfaf228c3bba67161; _pk_id.1.8c7a=6aaa921c16cac19e.1430161585.0.1430335152..; _pk_id.1.fd33=551c04dc3803aa29.1430160432.4.1430335152.1430239471.; _pk_ses.1.fd33=*; SPSI=0c5d10edb0583b16410bd9a315090a1a; _ga=GA1.2.1682239956.1430160431; _mkto_trk=id:891-VEY-973&token:_mch-similarweb.com-1430160432386-34995")
					.get();
			String categoria = doc.select(".text.series0").get(2).text();

			String sql = "INSERT INTO acessibilidade.SITE (site_url, categoria) VALUES ('"
					+ site + "', '" + categoria + "')";

			String dbUrl = "jdbc:mysql://localhost/acessibilidade";
			String dbClass = "com.mysql.jdbc.Driver";
			String username = "root";
			String password = "mysql";
			try {

				Class.forName(dbClass);
				Connection connection = DriverManager.getConnection(dbUrl,
						username, password);
				Statement statement = connection.createStatement();
				statement.execute(sql);
				connection.close();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void chrome(String site) throws IOException,
			InterruptedException {
		// Runtime.getRuntime().exec("cmd /c \"" +
		// "C:\\Users\\dhsv\\Desktop\\phantomjs-2.0.0-windows\\bin\\phantomjs.exe C:\\Users\\dhsv\\Documents\\GitHub\\accessibility-developer-toolstools\\runner\\audit.js http://"
		// + site + " > C:\\Users\\dhsv\\Desktop\\workspace_\\teste\\" + site +
		// CHROME_SUFFIX + "\"").waitFor();

		new File(site + CHROME_SUFFIX).createNewFile();

		//C:/Users/dhsv/Desktop/phantomjs-2.0.0-windows/bin/phantomjs.exe C:/Users/dhsv/Documents/GitHub/accessibility-developer-tools/tools/runner/audit.js http://www.aliexpress.com
		
		ProcessBuilder pb = new ProcessBuilder(
				"C:/Users/dhsv/Desktop/phantomjs-2.0.0-windows/bin/phantomjs.exe",
				"--proxy=" + PROXY_URL + ":" + PROXY_PORT,
//				"--proxy-auth=" + USERNAME + ":" + SENIA,
				"--proxy-type=socks5",
				"C:/Users/dhsv/Documents/GitHub/accessibility-developer-tools/tools/runner/audit.js",
				"http://" + site);
		pb.redirectOutput(new File(site + CHROME_SUFFIX));
		pb.redirectError(new File(site + CHROME_SUFFIX));
		Process p = pb.start();
		p.waitFor();
	}

	private static void aria(String site) throws IOException,
			FileNotFoundException {
		Document doc = Jsoup.connect("http://" + site).timeout(TIMEOUT)
				.userAgent(USERAGENT).get();
		PrintWriter out = new PrintWriter(site + ARIA_SUFFIX);
		out.print(pattern.matcher(doc.toString()).find());
		out.close();
	}

	private static void tenonio(String site) throws IOException,
			FileNotFoundException {
		Document doc = Jsoup.connect("http://tenon.io/async.php")
				.timeout(TIMEOUT).userAgent(USERAGENT)
				.data("url", "http://" + site)

				.post();
		String text = doc.text();
		
		if (!text.contains("\"status\":200")) {
			return;
		}

		PrintWriter out = new PrintWriter(site + TENON_SUFFIX);
		out.print(text);
		System.out.println(text);
		out.close();
	}

	/**
	 * retirado: blogspot.com, por precisar de login para acessar e pelo
	 * tr�fego, na verdade, ser totalmente fragmentado entre os diversos blogs.
	 * wordpress.com Tumblr.com Imgur.com Googleusercontent.com
	 * 
	 * "Live.com", por necessitar de login para entrar no sistema. Blogger.com
	 * netflix.com gmail.com acesso.uol.com.br mail.uol.com.br
	 * 
	 * 
	 * Foco maior em conte�do criado no Brasil.
	 * 
	 * adcash.com - propagandas e v�rus ou sites fora do ar Bycontext.com
	 * Warmportrait.com Googleadservices.com Youradexchange.com 7769domain.com
	 * Onclickads.net Egrana.com.br mystart.com Loading-delivery1.com
	 * outbrain.com Cityadspix.com Popads.net Bp.blogspot.com
	 * Mydomainadvisor.com Directrev.com Lomadee.com Hao123.com Adk2.co 337.com
	 * adf.ly webssearches.com Ero-advertising.com
	 * 
	 * 
	 * 
	 * 
	 * "T.co", minificacao de url
	 * 
	 * retirados da lista as p�ginas que tem como sua p�gina principal uma tela
	 * de login ou que precisam de login para abrir a p�gina principal.
	 * 
	 * bancobrasil.com - apenas um redirecionamento para bb.com.br
	 */

}
