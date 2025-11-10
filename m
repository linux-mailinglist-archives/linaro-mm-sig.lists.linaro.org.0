Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMbdNs354GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:01:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B980741014B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:01:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CAC06404F6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:01:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	by lists.linaro.org (Postfix) with ESMTPS id E66493F795
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Nov 2025 18:48:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=nhBrPyDs;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of andriy.shevchenko@linux.intel.com designates 192.198.163.14 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1762800487; x=1794336487;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=2GLm4NVkdUuOv+K7T0bT1SYFkvMIdVSo+0VB+hLNaFU=;
  b=nhBrPyDsPusWmNcNwBgFAG7KX3hHM9RGIo4iznZgHNK4WSxxXriweidC
   raT5ROv8M3p582QPn3NJk20aEk+zYDNexY0DAcvebO3hBOFkG2fEMxEU4
   Em5vFVSk4RMYZ0tnIcHNVsDy1/0M24pfdDbr0VK8EnSr5Zz8s4WyXyYdV
   buXGIPX3H3ZQINw2zCJUl+tR85u9Wr7s1nZoebn4gxisuFdVljrOCXGyv
   rDEbBprq6uOZel02v4U2EoRRzdU8RxkE9UNZh45ytfh+aMCxrKHepMxrH
   Zf+tgPBUZLkHFgASsjLPH1rs0503hMq+Y9jBXJ+XuVE2lo3T4H/Kz5MEI
   A==;
X-CSE-ConnectionGUID: YAYtFhRzT1yK01cUD6biLw==
X-CSE-MsgGUID: L/Tln328S4GJKRs4anStLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="64891954"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000";
   d="scan'208";a="64891954"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Nov 2025 10:48:06 -0800
X-CSE-ConnectionGUID: T9JvXfd2RP6uhr7fMRGrgQ==
X-CSE-MsgGUID: Pv4wkjngReqizgRny5HiIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000";
   d="scan'208";a="188985842"
Received: from black.igk.intel.com ([10.91.253.5])
  by fmviesa008.fm.intel.com with ESMTP; 10 Nov 2025 10:47:58 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 71F03A8; Mon, 10 Nov 2025 19:47:29 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <corey@minyard.net>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"Dr. David Alan Gilbert" <linux@treblig.org>,
	Alex Deucher <alexander.deucher@amd.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Rob Clark <robin.clark@oss.qualcomm.com>,
	Matthew Brost <matthew.brost@intel.com>,
	Hans Verkuil <hverkuil@kernel.org>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Vitaly Lifshits <vitaly.lifshits@intel.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Calvin Owens <calvin@wbinvd.org>,
	Sagi Maimon <maimon.sagi@gmail.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Karan Tilak Kumar <kartilak@cisco.com>,
	Casey Schaufler <casey@schaufler-ca.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Petr Mladek <pmladek@suse.com>,
	Max Kellermann <max.kellermann@ionos.com>,
	Takashi Iwai <tiwai@suse.de>,
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
	linux-trace-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org
Date: Mon, 10 Nov 2025 19:40:38 +0100
Message-ID: <20251110184727.666591-20-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: andriy.shevchenko@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: B7GJURXA4PTKLZUCEOVHGPKLSU6Q36XE
X-Message-ID-Hash: B7GJURXA4PTKLZUCEOVHGPKLSU6Q36XE
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:53:02 +0000
CC: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Sergey Senozhatsky <senozhatsky@chromium.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Konrad Dybcio <konradybcio@kernel.org>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni
 @redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Rodolfo Giometti <giometti@enneenne.com>, Jonathan Lemon <jonathan.lemon@gmail.com>, Vadim Fedorenko <vadim.fedorenko@linux.dev>, Richard Cochran <richardcochran@gmail.com>, Stefan Haberland <sth@linux.ibm.com>, Jan Hoeppner <hoeppner@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Alexander Gordeev <agordeev@linux.ibm.com>, Christian Borntraeger <borntraeger@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>, Sesidhar Baddela <sebaddel@cisco.com>, "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>, Masami Hiramatsu <mhiramat@kernel.org>,
  Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Andrew Morton <akpm@linux-foundation.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v1 19/23] ptp: ocp: Switch to use %ptSp
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B7GJURXA4PTKLZUCEOVHGPKLSU6Q36XE/>
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
	DATE_IN_PAST(1.00)[3764];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[rasmusvillemoes.dk,chromium.org,lwn.net,linaro.org,padovan.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,linux.dev,poorly.run,somainline.org,intel.com,lunn.ch,davemloft.net,google.com,redhat.com,enneenne.com,linux.ibm.com,cisco.com,HansenPartnership.com,linuxfoundation.org,efficios.com,linux-foundation.org,perex.cz,suse.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[minyard.net,amd.com,treblig.org,suse.de,oss.qualcomm.com,intel.com,kernel.org,ideasonboard.com,linaro.org,linux.intel.com,wbinvd.org,gmail.com,oracle.com,cisco.com,schaufler-ca.com,goodmis.org,suse.com,ionos.com,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,lists.linux.dev];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	RCPT_COUNT_GT_50(0.00)[96];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	NEURAL_SPAM(0.00)[0.551];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: B980741014B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Use %ptSp instead of open coded variants to print content of
struct timespec64 in human readable format.

While at it, fix wrong use of %ptT against struct timespec64.
It's kinda lucky that it worked just because the first member
there 64-bit and it's of time64_t type. Now with %ptS it may
be used correctly.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/ptp/ptp_ocp.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/ptp/ptp_ocp.c b/drivers/ptp/ptp_ocp.c
index a5c363252986..a0bb8d3045d2 100644
--- a/drivers/ptp/ptp_ocp.c
+++ b/drivers/ptp/ptp_ocp.c
@@ -3261,7 +3261,7 @@ signal_show(struct device *dev, struct device_attribute *attr, char *buf)
 			   signal->duty, signal->phase, signal->polarity);
 
 	ts = ktime_to_timespec64(signal->start);
-	count += sysfs_emit_at(buf, count, " %ptT TAI\n", &ts);
+	count += sysfs_emit_at(buf, count, " %ptS TAI\n", &ts);
 
 	return count;
 }
@@ -4287,11 +4287,9 @@ ptp_ocp_summary_show(struct seq_file *s, void *data)
 		ns += (s64)bp->utc_tai_offset * NSEC_PER_SEC;
 		sys_ts = ns_to_timespec64(ns);
 
-		seq_printf(s, "%7s: %lld.%ld == %ptT TAI\n", "PHC",
-			   ts.tv_sec, ts.tv_nsec, &ts);
-		seq_printf(s, "%7s: %lld.%ld == %ptT UTC offset %d\n", "SYS",
-			   sys_ts.tv_sec, sys_ts.tv_nsec, &sys_ts,
-			   bp->utc_tai_offset);
+		seq_printf(s, "%7s: %ptSp == %ptS TAI\n", "PHC", &ts, &ts);
+		seq_printf(s, "%7s: %ptSp == %ptS UTC offset %d\n", "SYS",
+			   &sys_ts, &sys_ts, bp->utc_tai_offset);
 		seq_printf(s, "%7s: PHC:SYS offset: %lld  window: %lld\n", "",
 			   timespec64_to_ns(&ts) - ns,
 			   post_ns - pre_ns);
@@ -4499,9 +4497,8 @@ ptp_ocp_phc_info(struct ptp_ocp *bp)
 		 ptp_clock_index(bp->ptp));
 
 	if (!ptp_ocp_gettimex(&bp->ptp_info, &ts, NULL))
-		dev_info(&bp->pdev->dev, "Time: %lld.%ld, %s\n",
-			 ts.tv_sec, ts.tv_nsec,
-			 bp->sync ? "in-sync" : "UNSYNCED");
+		dev_info(&bp->pdev->dev, "Time: %ptSp, %s\n",
+			 &ts, bp->sync ? "in-sync" : "UNSYNCED");
 }
 
 static void
-- 
2.50.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
