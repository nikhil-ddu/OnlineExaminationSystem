using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExaminationSystem
{
    public partial class information : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request.QueryString["type"].Equals("gate"))
                {
                    Label1.Text = "GATE";
                    Label2.Text = " GATE";
                    AdRotator1.AdvertisementFile = "gatexml.xml";
                    Label3.Text = "The Graduate Aptitude Test in Engineering (GATE) is an all-India examination that primarily tests the comprehensive understanding of various undergraduate subjects in engineering and science. GATE is conducted jointly by the Indian Institute of Science and seven Indian Institutes of Technology (Bombay, Delhi, Guwahati, Kanpur, Kharagpur, Madras and Roorkee) on behalf of the National Coordination Board – GATE, Department of Higher Education, Ministry of Human Resources Development (MHRD), Government of India.The GATE score of a candidate reflects the relative performance level of a candidate. The score is used for admissions to various post - graduate education programs(e.g.Master of Engineering, Master of Technology, Doctor of Philosophy) in Indian higher education institutes, with financial assistance provided by MHRD and other government agencies.Recently, GATE scores are also being used by several Indian public sector undertakings(i.e., government-owned companies) for recruiting graduate engineers in entry-level positions.It is one of the most competitive examinations in India.Based on the success story of IITs all over the world, GATE is also recognized by various international institutes such as Nanyang Technological University, Singapore.";
                }
                else if (Request.QueryString["type"].Equals("gre"))
                {
                    Label1.Text = "GRE";
                    Label2.Text = " GRE";
                    Label3.Text = "The Graduate Record Examination (GRE) is a standardized test that is an admissions requirement for most Graduate Schools in the United States.[7] Created and administered by the Educational Testing Service (ETS) in 1949,[8] the exam aims to measure verbal reasoning, quantitative reasoning, analytical writing, and critical thinking skills that have been acquired over a long period of time and that are not entirely based on any specific field of study outside of the GRE itself. The GRE General Test is offered as a computer-based exam administered at Prometric testing centers.In the graduate school admissions process, the level of emphasis that is placed upon GRE scores varies widely between schools and between departments within schools. The importance of a GRE score can range from being a mere admission formality to an important selection factor.The GRE was significantly overhauled in August 2011, resulting in an exam that is not adaptive on a question-by - question basis, but rather by section, so that the performance on the first verbal and math sections determine the difficulty of the second sections presented. Overall, the test retained the sections and many of the question types from its predecessor, but the scoring scale was changed to a 130 to 170 scale(from a 200 to 800 scale).The cost to take the test is US$205.although ETS will reduce the fee under certain circumstances.[6] They also promote financial aid to those GRE applicants who prove economic hardship.[10] ETS does not release scores that are older than 5 years, although graduate program policies on the acceptance of scores older than 5 years will vary.";

                    AdRotator1.AdvertisementFile = "grexml.xml";
                }
                else if (Request.QueryString["type"].Equals("cat"))
                {
                    Label1.Text = "CAT";
                    Label2.Text = " CAT";
                    Label3.Text = "The Common Admission Test (CAT)[2] is a computer based test held in India. The test scores a candidate on the bases of Quantitative Ability (QA), Verbal Ability (VA) and Reading Comprehension (RC), Data Interpretation (DI) and Logical Reasoning (LR). The Indian Institutes of Management (IIMs) started this exam and use the test for selecting students for their business administration programs. The test is conducted every year by one of the IIMs based on a policy of rotation. In August 2011, it was announced that Indian Institutes of Technology (IITs) and Indian Institute of Science (IISc) would also use the CAT scores, instead of the Joint Management Entrance Test (JMET), to select students for their management programmes starting with the 2012-14 batch.[3] Common Admission Test (CAT) 2015 was conducted by the Indian Institute of Management Ahmedabad (IIM Ahmedabad)[4] on November 29, 2015. IIM Indore[5] held Common Admission Test for the years 2013-14.";
                    AdRotator1.AdvertisementFile = "catxml.xml";
                }
            }
            catch (Exception ee)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Something went wrong');window.location ='home.aspx';", true);
            }
        }
    }
}