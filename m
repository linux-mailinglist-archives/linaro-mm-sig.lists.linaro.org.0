Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8AfbMSn84GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:11:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE2641054B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:11:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 695DA406AB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:11:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
	by lists.linaro.org (Postfix) with ESMTPS id 1F86A3F80C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 15:02:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=K7DLHB1S;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of andriy.shevchenko@linux.intel.com designates 192.198.163.12 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1763046150; x=1794582150;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=2B46NT1dSQc4u95Gk/QrFTNjX7VR1jBDUh9ZV8b1ovg=;
  b=K7DLHB1SEzdT5zBcnj4as3kMCzsYGiLeyZKNOchp8teOvWgPhcze3NbB
   vKoLGuth8tlpzox0hYH/7Ap2OzEtwMx0xr/GkeaS2mrDACaih21G5ECFD
   ecibKqUJJJr6cCC961Q4pT3zE4nj3jox4sY3u5ixpQdrBXMsqQ0jxUeDc
   RG67bWLgzFLR2wYKyOG25fRaZb21xL+diR6nMx0TK60W4NFH4HjBf8thR
   jSBTvJ3aotJDg/pSRL6U/cF2NLpjH8zsWdqIPXUcoUgCCDI2hFXUmiklV
   XSfLVmZ/3BeOC5gNUcftKbundRE/B22swhDHm0CdGPkI59x/b0mHhazbM
   w==;
X-CSE-ConnectionGUID: 1oKpuqeHTV6wl7NQUnWuTA==
X-CSE-MsgGUID: zN6e6Ku1TaOPaYIsrX7cpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="68991455"
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000";
   d="scan'208";a="68991455"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2025 07:02:29 -0800
X-CSE-ConnectionGUID: Vz8xRacFQwaRx7eYs36+8g==
X-CSE-MsgGUID: H/6qh459QiuQ7G0yqQYVsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000";
   d="scan'208";a="188810179"
Received: from black.igk.intel.com ([10.91.253.5])
  by orviesa010.jf.intel.com with ESMTP; 13 Nov 2025 07:02:19 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 05CA197; Thu, 13 Nov 2025 16:02:19 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <corey@minyard.net>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"Dr. David Alan Gilbert" <linux@treblig.org>,
	Alex Deucher <alexander.deucher@amd.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Rob Clark <robin.clark@oss.qualcomm.com>,
	Matthew Brost <matthew.brost@intel.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
	Vitaly Lifshits <vitaly.lifshits@intel.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Calvin Owens <calvin@wbinvd.org>,
	Vadim Fedorenko <vadim.fedorenko@linux.dev>,
	Sagi Maimon <maimon.sagi@gmail.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Karan Tilak Kumar <kartilak@cisco.com>,
	Hans Verkuil <hverkuil+cisco@kernel.org>,
	Casey Schaufler <casey@schaufler-ca.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Petr Mladek <pmladek@suse.com>,
	Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>,
	Max Kellermann <max.kellermann@ionos.com>,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	openipmi-developer@lists.sourceforge.net,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	amd-gfx@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org,
	freedreno@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org,
	linux-mmc@vger.kernel.org,
	netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org,
	linux-pci@vger.kernel.org,
	linux-s390@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	linux-staging@lists.linux.dev,
	ceph-devel@vger.kernel.org,
	linux-trace-kernel@vger.kernel.org
Date: Thu, 13 Nov 2025 15:32:15 +0100
Message-ID: <20251113150217.3030010-2-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Spamd-Bar: ----
X-MailFrom: andriy.shevchenko@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6WGHPSD2TP2EWZLP4F3FSSANHK74WX63
X-Message-ID-Hash: 6WGHPSD2TP2EWZLP4F3FSSANHK74WX63
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:56:35 +0000
CC: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Sergey Senozhatsky <senozhatsky@chromium.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Konrad Dybcio <konradybcio@kernel.org>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@
 intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Rodolfo Giometti <giometti@enneenne.com>, Jonathan Lemon <jonathan.lemon@gmail.com>, Richard Cochran <richardcochran@gmail.com>, Stefan Haberland <sth@linux.ibm.com>, Jan Hoeppner <hoeppner@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Alexander Gordeev <agordeev@linux.ibm.com>, Christian Borntraeger <borntraeger@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>, Sesidhar Baddela <sebaddel@cisco.com>, "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficio
 s.com>, Andrew Morton <akpm@linux-foundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 01/21] lib/vsprintf: Add specifier for printing struct timespec64
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6WGHPSD2TP2EWZLP4F3FSSANHK74WX63/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	DATE_IN_PAST(1.00)[3696];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[rasmusvillemoes.dk,chromium.org,lwn.net,linaro.org,padovan.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,linux.dev,poorly.run,somainline.org,intel.com,lunn.ch,davemloft.net,google.com,redhat.com, intel.com,enneenne.com,linux.ibm.com,cisco.com,HansenPartnership.com,linuxfoundation.org,efficio s.com,linux-foundation.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[minyard.net,amd.com,treblig.org,suse.de,oss.qualcomm.com,intel.com,linaro.org,linux.intel.com,kernel.org,wbinvd.org,linux.dev,gmail.com,oracle.com,cisco.com,schaufler-ca.com,goodmis.org,suse.com,ibm.com,ionos.com,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,lists.linux.dev];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	RCPT_COUNT_GT_50(0.00)[93];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,cisco];
	NEURAL_SPAM(0.00)[0.525];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,intel.com:email]
X-Rspamd-Queue-Id: 5CE2641054B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

A handful drivers want to print a content of the struct timespec64
in a format of %lld:%09ld. In order to make their lives easier, add
the respecting specifier directly to the printf() implementation.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 Documentation/core-api/printk-formats.rst | 11 +++++++--
 lib/tests/printf_kunit.c                  |  4 ++++
 lib/vsprintf.c                            | 28 ++++++++++++++++++++++-
 3 files changed, 40 insertions(+), 3 deletions(-)

diff --git a/Documentation/core-api/printk-formats.rst b/Documentation/core-api/printk-formats.rst
index 7f2f11b48286..c0b1b6089307 100644
--- a/Documentation/core-api/printk-formats.rst
+++ b/Documentation/core-api/printk-formats.rst
@@ -547,11 +547,13 @@ Time and date
 	%pt[RT]s		YYYY-mm-dd HH:MM:SS
 	%pt[RT]d		YYYY-mm-dd
 	%pt[RT]t		HH:MM:SS
-	%pt[RT][dt][r][s]
+	%ptSp			<seconds>.<nanoseconds>
+	%pt[RST][dt][r][s]
 
 For printing date and time as represented by::
 
-	R  struct rtc_time structure
+	R  content of struct rtc_time
+	S  content of struct timespec64
 	T  time64_t type
 
 in human readable format.
@@ -563,6 +565,11 @@ The %pt[RT]s (space) will override ISO 8601 separator by using ' ' (space)
 instead of 'T' (Capital T) between date and time. It won't have any effect
 when date or time is omitted.
 
+The %ptSp is equivalent to %lld.%09ld for the content of the struct timespec64.
+When the other specifiers are given, it becomes the respective equivalent of
+%ptT[dt][r][s].%09ld. In other words, the seconds are being printed in
+the human readable format followed by a dot and nanoseconds.
+
 Passed by reference.
 
 struct clk
diff --git a/lib/tests/printf_kunit.c b/lib/tests/printf_kunit.c
index bc54cca2d7a6..7617e5b8b02c 100644
--- a/lib/tests/printf_kunit.c
+++ b/lib/tests/printf_kunit.c
@@ -504,6 +504,7 @@ time_and_date(struct kunit *kunittest)
 	};
 	/* 2019-01-04T15:32:23 */
 	time64_t t = 1546615943;
+	struct timespec64 ts = { .tv_sec = t, .tv_nsec = 11235813 };
 
 	test("(%pt?)", "%pt", &tm);
 	test("2018-11-26T05:35:43", "%ptR", &tm);
@@ -522,6 +523,9 @@ time_and_date(struct kunit *kunittest)
 	test("0119-00-04 15:32:23", "%ptTsr", &t);
 	test("15:32:23|2019-01-04", "%ptTts|%ptTds", &t, &t);
 	test("15:32:23|0119-00-04", "%ptTtrs|%ptTdrs", &t, &t);
+
+	test("2019-01-04T15:32:23.011235813", "%ptS", &ts);
+	test("1546615943.011235813", "%ptSp", &ts);
 }
 
 static void
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 11dbf1023391..51a88b3f5b52 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -1983,6 +1983,28 @@ char *time64_str(char *buf, char *end, const time64_t time,
 	return rtc_str(buf, end, &rtc_time, spec, fmt);
 }
 
+static noinline_for_stack
+char *timespec64_str(char *buf, char *end, const struct timespec64 *ts,
+		     struct printf_spec spec, const char *fmt)
+{
+	static const struct printf_spec default_dec09_spec = {
+		.base = 10,
+		.field_width = 9,
+		.precision = -1,
+		.flags = ZEROPAD,
+	};
+
+	if (fmt[2] == 'p')
+		buf = number(buf, end, ts->tv_sec, default_dec_spec);
+	else
+		buf = time64_str(buf, end, ts->tv_sec, spec, fmt);
+	if (buf < end)
+		*buf = '.';
+	buf++;
+
+	return number(buf, end, ts->tv_nsec, default_dec09_spec);
+}
+
 static noinline_for_stack
 char *time_and_date(char *buf, char *end, void *ptr, struct printf_spec spec,
 		    const char *fmt)
@@ -1993,6 +2015,8 @@ char *time_and_date(char *buf, char *end, void *ptr, struct printf_spec spec,
 	switch (fmt[1]) {
 	case 'R':
 		return rtc_str(buf, end, (const struct rtc_time *)ptr, spec, fmt);
+	case 'S':
+		return timespec64_str(buf, end, (const struct timespec64 *)ptr, spec, fmt);
 	case 'T':
 		return time64_str(buf, end, *(const time64_t *)ptr, spec, fmt);
 	default:
@@ -2456,9 +2480,11 @@ early_param("no_hash_pointers", no_hash_pointers_enable);
  * - 'd[234]' For a dentry name (optionally 2-4 last components)
  * - 'D[234]' Same as 'd' but for a struct file
  * - 'g' For block_device name (gendisk + partition number)
- * - 't[RT][dt][r][s]' For time and date as represented by:
+ * - 't[RST][dt][r][s]' For time and date as represented by:
  *      R    struct rtc_time
+ *      S    struct timespec64
  *      T    time64_t
+ * - 'tSp' For time represented by struct timespec64 printed as <seconds>.<nanoseconds>
  * - 'C' For a clock, it prints the name (Common Clock Framework) or address
  *       (legacy clock framework) of the clock
  * - 'G' For flags to be printed as a collection of symbolic strings that would
-- 
2.50.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
