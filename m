Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNI3ETr84GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:11:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DD63B410560
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:11:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F2462404E9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:11:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
	by lists.linaro.org (Postfix) with ESMTPS id EAB273F80D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 15:02:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="dPAL/epx";
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of andriy.shevchenko@linux.intel.com designates 192.198.163.12 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1763046163; x=1794582163;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=xXyctpk+av7LWTqLda4jFkpzr1VPV7EOmfIfDNoOySU=;
  b=dPAL/epxIiXItiOhW21RZKJkXBu73+fIMX7zl7aHUVq2SAyjRkw142ea
   4Cx+sEpplE9qIUE6N1JGlZSeKe2V2ceho/fFuBJe92Me2TaellBRB6EZs
   g8bAv3q7ddTCzbLPu1E/mjnatG7hwEkC6xd7IzIkCaLsXt4xF/TwwzcFm
   D8jrA14dUL1Llig6ej8d2qOzFP4lGmRC8xBDzWR8NtvPwor3rCoJevHIW
   z9TnHPxQZh11DHlVTtJNP1H9HlFuSHiy33UOPtdxJLTm+KEgoHg3gTn8e
   132eyc6OtJg/HMuzQg7m50gkT0t4E/bQdvwZPW19iQcuwbzLvLFIL/pK+
   Q==;
X-CSE-ConnectionGUID: nPCDrpvtT9OSqShLJrPRuQ==
X-CSE-MsgGUID: qsi59OQKREaHIbhoLphdsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="68991537"
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000";
   d="scan'208";a="68991537"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2025 07:02:41 -0800
X-CSE-ConnectionGUID: DIfiUnNYR/yZE1Tf+OgUOQ==
X-CSE-MsgGUID: alFPuFbYQTqfXKojQLQ2xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000";
   d="scan'208";a="188810238"
Received: from black.igk.intel.com ([10.91.253.5])
  by orviesa010.jf.intel.com with ESMTP; 13 Nov 2025 07:02:32 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 19B8C9A; Thu, 13 Nov 2025 16:02:19 +0100 (CET)
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
Date: Thu, 13 Nov 2025 15:32:18 +0100
Message-ID: <20251113150217.3030010-5-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Spamd-Bar: ----
X-MailFrom: andriy.shevchenko@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: W4TQEEJSJF34ZZYFTOPXWO7TVIDZNTQ3
X-Message-ID-Hash: W4TQEEJSJF34ZZYFTOPXWO7TVIDZNTQ3
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:56:36 +0000
CC: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Sergey Senozhatsky <senozhatsky@chromium.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Konrad Dybcio <konradybcio@kernel.org>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@
 intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Rodolfo Giometti <giometti@enneenne.com>, Jonathan Lemon <jonathan.lemon@gmail.com>, Richard Cochran <richardcochran@gmail.com>, Stefan Haberland <sth@linux.ibm.com>, Jan Hoeppner <hoeppner@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Alexander Gordeev <agordeev@linux.ibm.com>, Christian Borntraeger <borntraeger@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>, Sesidhar Baddela <sebaddel@cisco.com>, "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficio
 s.com>, Andrew Morton <akpm@linux-foundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 04/21] dma-buf: Switch to use %ptSp
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W4TQEEJSJF34ZZYFTOPXWO7TVIDZNTQ3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	DATE_IN_PAST(1.00)[3696];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[rasmusvillemoes.dk,chromium.org,lwn.net,linaro.org,padovan.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,linux.dev,poorly.run,somainline.org,intel.com,lunn.ch,davemloft.net,google.com,redhat.com, intel.com,enneenne.com,linux.ibm.com,cisco.com,HansenPartnership.com,linuxfoundation.org,efficio s.com,linux-foundation.org];
	GREYLIST(0.00)[pass,meta];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[minyard.net,amd.com,treblig.org,suse.de,oss.qualcomm.com,intel.com,linaro.org,linux.intel.com,kernel.org,wbinvd.org,linux.dev,gmail.com,oracle.com,cisco.com,schaufler-ca.com,goodmis.org,suse.com,ibm.com,ionos.com,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,lists.linux.dev];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	RCPT_COUNT_GT_50(0.00)[93];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.606];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,cisco];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linux.intel.com:mid,amd.com:email,intel.com:email,linaro.org:email]
X-Rspamd-Queue-Id: DD63B410560
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VXNlICVwdFNwIGluc3RlYWQgb2Ygb3BlbiBjb2RlZCB2YXJpYW50cyB0byBwcmludCBjb250ZW50
IG9mDQpzdHJ1Y3QgdGltZXNwZWM2NCBpbiBodW1hbiByZWFkYWJsZSBmb3JtYXQuDQoNClJldmll
d2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpBY2tl
ZC1ieTogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NClNpZ25lZC1vZmYt
Ynk6IEFuZHkgU2hldmNoZW5rbyA8YW5kcml5LnNoZXZjaGVua29AbGludXguaW50ZWwuY29tPg0K
LS0tDQogZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcuYyB8IDIgKy0NCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMv
ZG1hLWJ1Zi9zeW5jX2RlYnVnLmMgYi9kcml2ZXJzL2RtYS1idWYvc3luY19kZWJ1Zy5jDQppbmRl
eCA2N2NkNjk1NTFlNDIuLjllNWQ2NjJjZDRlOCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1
Zi9zeW5jX2RlYnVnLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmMNCkBAIC01
OSw3ICs1OSw3IEBAIHN0YXRpYyB2b2lkIHN5bmNfcHJpbnRfZmVuY2Uoc3RydWN0IHNlcV9maWxl
ICpzLA0KIAkJc3RydWN0IHRpbWVzcGVjNjQgdHM2NCA9DQogCQkJa3RpbWVfdG9fdGltZXNwZWM2
NChmZW5jZS0+dGltZXN0YW1wKTsNCiANCi0JCXNlcV9wcmludGYocywgIkAlbGxkLiUwOWxkIiwg
KHM2NCl0czY0LnR2X3NlYywgdHM2NC50dl9uc2VjKTsNCisJCXNlcV9wcmludGYocywgIkAlcHRT
cCIsICZ0czY0KTsNCiAJfQ0KIA0KIAlzZXFfcHJpbnRmKHMsICI6ICVsbGQiLCBmZW5jZS0+c2Vx
bm8pOw0KLS0gDQoyLjUwLjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
