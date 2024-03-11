/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package EmailAutoman;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author ASUS
 */
public class SendEmail {

    public void sendMaill(String mail, String name) {

        final String username = "nhanbtdevfe23@gmail.com";
        final String password = "vutc kizj tmap aqlz";
        String fromEmail = "nhanbtdevfe23@gmail.com";
        String toEmail = mail;
        Properties properties = new Properties();

        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");

        Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });
        MimeMessage mgs = new MimeMessage(session);
        try {

            mgs.setFrom(new InternetAddress(fromEmail));
            mgs.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
            mgs.setSubject(": Welcome to the 92 Library - Your Gateway to the Future of Knowledge!");
            mgs.setText("Dear" + name + ",\n"
                    + "\n"
                    + "Greetings and a warm welcome to the 92 Library – the epitome of modernity and innovation in the realm of digital libraries! We are thrilled to have you as our newest member, and we extend our sincerest gratitude for choosing to embark on your intellectual journey with us.\n"
                    + "\n"
                    + "The 92 Library stands at the forefront of the digital library revolution, offering an unparalleled experience that transcends traditional boundaries. As you step into this virtual realm of knowledge, you are not merely accessing a library; you are entering a portal to the future of information, exploration, and enlightenment.\n"
                    + "\n"
                    + "Discover the 92 Library Difference:\n"
                    + "Our library is more than just a repository of books; it is a dynamic ecosystem designed to cater to the diverse needs and interests of our global community of readers. Here are some highlights of what you can expect:\n"
                    + "\n"
                    + "1. Vast Digital Collection:\n"
                    + "Dive into our extensive digital collection featuring millions of e-books, audiobooks, research papers, and multimedia resources. From timeless classics to cutting-edge research, the 92 Library houses a treasure trove of knowledge across various genres and disciplines.\n"
                    + "\n"
                    + "2. Smart Search and Recommendation Engine:\n"
                    + "Navigate effortlessly through our vast collection with our state-of-the-art search and recommendation engine. Personalized recommendations ensure that you always discover content that aligns with your interests and preferences.\n"
                    + "\n"
                    + "3. Interactive Learning Spaces:\n"
                    + "Participate in virtual study groups, book clubs, and discussion forums within our interactive learning spaces. Engage in insightful conversations, share your thoughts, and connect with like-minded individuals from around the globe.\n"
                    + "\n"
                    + "4. Access Anytime, Anywhere:\n"
                    + "Experience the freedom to explore our library at your convenience. Whether you prefer to delve into a literary masterpiece during your morning coffee or engage in research late into the night, the 92 Library is accessible 24/7, from any device.\n"
                    + "\n"
                    + "5. Cutting-Edge Technological Integration:\n"
                    + "Stay at the forefront of technological advancements with our innovative features. Virtual reality (VR) experiences, artificial intelligence (AI) assistance, and immersive storytelling are just a glimpse of the groundbreaking technologies awaiting you.\n"
                    + "\n"
                    + "Getting Started:\n"
                    + "To maximize your experience, follow these simple steps:\n"
                    + "\n"
                    + "Explore the Homepage:\n"
                    + "\n"
                    + "Take a tour of our homepage to discover featured content, upcoming events, and curated collections tailored to your interests.\n"
                    + "Personalize Your Profile:\n"
                    + "\n"
                    + "Customize your profile to reflect your unique reading preferences, favorite genres, and areas of interest. This will help us tailor our recommendations to suit your tastes.\n"
                    + "Connect with the Community:\n"
                    + "\n"
                    + "Join discussions, share your insights, and connect with fellow members. The 92 Library community is a vibrant space where knowledge knows no boundaries.\n"
                    + "Attend Virtual Events:\n"
                    + "\n"
                    + "Keep an eye on our event calendar for virtual book launches, author talks, and interactive workshops. Engage in enriching experiences that extend beyond the pages of a book.\n"
                    + "Stay Informed and Inspired:\n"
                    + "To stay updated on the latest additions to our collection, upcoming events, and exclusive member benefits, be sure to subscribe to our newsletter. You'll receive regular insights and curated content directly to your inbox.\n"
                    + "\n"
                    + "Thank you for choosing the 92 Library as your gateway to the future of knowledge. We are excited to accompany you on this intellectual adventure and look forward to witnessing the incredible insights and discoveries you'll make within our digital haven.\n"
                    + "\n"
                    + "Happy reading, exploring, and evolving!\n"
                    + "\n"
                    + "Warm regards,\n"
                    + "\n"
                    + "Bui Thien Nhan Admin \n"
                    + "Thanks You\n"
                    + "92 Library Team");
            Transport.send(mgs);
            System.out.println("Sent Magess");
        } catch (MessagingException e) {
            e.printStackTrace();
        }

    }

}
