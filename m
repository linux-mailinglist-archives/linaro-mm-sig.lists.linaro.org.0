Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCA1619080
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 06:55:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A66923F5CA
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 05:55:04 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 361BF3EC14
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Nov 2022 05:54:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of "SRS0=+Cc8=3E=goodmis.org=rostedt@kernel.org" designates 139.178.84.217 as permitted sender) smtp.mailfrom="SRS0=+Cc8=3E=goodmis.org=rostedt@kernel.org";
	dmarc=none
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BBFD46206D;
	Fri,  4 Nov 2022 05:54:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CCCBC433C1;
	Fri,  4 Nov 2022 05:54:45 +0000 (UTC)
Date: Fri, 4 Nov 2022 01:54:44 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: linux-kernel@vger.kernel.org
Message-ID: <20221104015444.57f73efb@rorschach.local.home>
In-Reply-To: <20221104054914.085569465@goodmis.org>
References: <20221104054053.431922658@goodmis.org>
	<20221104054914.085569465@goodmis.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ---
X-Rspamd-Queue-Id: 361BF3EC14
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	FORGED_SENDER(0.30)[rostedt@goodmis.org,SRS0=@kernel.org];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	DBL_BLOCKED_OPENRESOLVER(0.00)[goodmis.org:email,lists.freedesktop.org:email];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_ALL(0.00)[];
	R_DKIM_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	URIBL_BLOCKED(0.00)[dfw.source.kernel.org:helo,dfw.source.kernel.org:rdns];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_FROM(0.00)[Cc8=3E=goodmis.org=rostedt];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[goodmis.org];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rostedt@goodmis.org,SRS0=@kernel.org]
Message-ID-Hash: A3VTYBGKBYBP2ZPLGVOIC772NAJQCG47
X-Message-ID-Hash: A3VTYBGKBYBP2ZPLGVOIC772NAJQCG47
X-MailFrom: SRS0=+Cc8=3E=goodmis.org=rostedt@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Linus Torvalds <torvalds@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>, Stephen Boyd <sboyd@kernel.org>, Guenter Roeck <linux@roeck-us.net>, Anna-Maria Gleixner <anna-maria@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC][PATCH v3 12/33] timers: dma-buf: Use timer_shutdown_sync() before freeing timer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A3VTYBGKBYBP2ZPLGVOIC772NAJQCG47/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WyBPbmNlIGFnYWluLCBxdWlsdCBmYWlscyB0aGUgTUlNRSBjb2RpbmcgXQ0KDQpGcm9tOiAiU3Rl
dmVuIFJvc3RlZHQgKEdvb2dsZSkiIDxyb3N0ZWR0QGdvb2RtaXMub3JnPg0KDQpCZWZvcmUgYSB0
aW1lciBpcyBmcmVlZCwgdGltZXJfc2h1dGRvd25fc3luYygpIG11c3QgYmUgY2FsbGVkLg0KDQpM
aW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMjA0MDcxNjE3NDUuN2Q2NzU0YjNA
Z2FuZGFsZi5sb2NhbC5ob21lLw0KDQpDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGlu
YXJvLm9yZz4NCkNjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4NCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCkNjOiBkcmktZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQpTaWdu
ZWQtb2ZmLWJ5OiBTdGV2ZW4gUm9zdGVkdCAoR29vZ2xlKSA8cm9zdGVkdEBnb29kbWlzLm9yZz4N
Ci0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYyB8IDIgKy0NCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2Uu
Yw0KaW5kZXggZmI2ZTBhNmFlMmM5Li41ZDNlN2I1MDM1MDEgMTAwNjQ0DQotLS0gYS9kcml2ZXJz
L2RtYS1idWYvc3QtZG1hLWZlbmNlLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVu
Y2UuYw0KQEAgLTQxMiw3ICs0MTIsNyBAQCBzdGF0aWMgaW50IHRlc3Rfd2FpdF90aW1lb3V0KHZv
aWQgKmFyZykNCiANCiAJZXJyID0gMDsNCiBlcnJfZnJlZToNCi0JZGVsX3RpbWVyX3N5bmMoJnd0
LnRpbWVyKTsNCisJdGltZXJfc2h1dGRvd25fc3luYygmd3QudGltZXIpOw0KIAlkZXN0cm95X3Rp
bWVyX29uX3N0YWNrKCZ3dC50aW1lcik7DQogCWRtYV9mZW5jZV9zaWduYWwod3QuZik7DQogCWRt
YV9mZW5jZV9wdXQod3QuZik7DQotLSANCjIuMzUuMQ0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
