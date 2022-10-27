Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C3060FB4E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Oct 2022 17:09:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9ACF13F5A6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Oct 2022 15:09:29 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id E81E93F4D7
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Oct 2022 15:09:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of "SRS0=KBNb=24=goodmis.org=rostedt@kernel.org" designates 139.178.84.217 as permitted sender) smtp.mailfrom="SRS0=KBNb=24=goodmis.org=rostedt@kernel.org";
	dmarc=none
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9663A623A2;
	Thu, 27 Oct 2022 15:09:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 719D7C43142;
	Thu, 27 Oct 2022 15:09:12 +0000 (UTC)
Received: from rostedt by gandalf.local.home with local (Exim 4.96)
	(envelope-from <rostedt@goodmis.org>)
	id 1oo4Vb-00BvYF-1u;
	Thu, 27 Oct 2022 11:09:27 -0400
Message-ID: <20221027150927.371916000@goodmis.org>
User-Agent: quilt/0.66
Date: Thu, 27 Oct 2022 11:05:37 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: linux-kernel@vger.kernel.org
References: <20221027150525.753064657@goodmis.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: E81E93F4D7
X-Spamd-Result: default: False [-1.95 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_BAD_CTE_7BIT(1.05)[7bit,utf8];
	FORGED_SENDER(0.30)[rostedt@goodmis.org,SRS0=KBNb=24=goodmis.org=rostedt@kernel.org];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[goodmis.org];
	FROM_NEQ_ENVFROM(0.00)[rostedt@goodmis.org,SRS0=KBNb=24=goodmis.org=rostedt@kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[]
Message-ID-Hash: RZO3MAASHB6N75VZIDBSEHOKMTK6JJ3F
X-Message-ID-Hash: RZO3MAASHB6N75VZIDBSEHOKMTK6JJ3F
X-MailFrom: SRS0=KBNb=24=goodmis.org=rostedt@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Linus Torvalds <torvalds@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>, Stephen Boyd <sboyd@kernel.org>, Guenter Roeck <linux@roeck-us.net>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC][PATCH v2 12/31] timers: dma-buf: Use del_timer_shutdown() before freeing timer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RZO3MAASHB6N75VZIDBSEHOKMTK6JJ3F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogIlN0ZXZlbiBSb3N0ZWR0IChHb29nbGUpIiA8cm9zdGVkdEBnb29kbWlzLm9yZz4NCg0K
QmVmb3JlIGEgdGltZXIgaXMgZnJlZWQsIGRlbF90aW1lcl9zaHV0ZG93bigpIG11c3QgYmUgY2Fs
bGVkLg0KDQpMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMjA0MDcxNjE3NDUu
N2Q2NzU0YjNAZ2FuZGFsZi5sb2NhbC5ob21lLw0KDQpDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5z
ZW13YWxAbGluYXJvLm9yZz4NCkNjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4NCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCkNjOiBkcmktZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnDQpTaWduZWQtb2ZmLWJ5OiBTdGV2ZW4gUm9zdGVkdCAoR29vZ2xlKSA8cm9zdGVkdEBnb29k
bWlzLm9yZz4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYyB8IDIgKy0NCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCg0KZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9zdC1k
bWEtZmVuY2UuYw0KaW5kZXggZmI2ZTBhNmFlMmM5Li5jNjdiNzAyMDViNmYgMTAwNjQ0DQotLS0g
YS9kcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9z
dC1kbWEtZmVuY2UuYw0KQEAgLTQxMiw3ICs0MTIsNyBAQCBzdGF0aWMgaW50IHRlc3Rfd2FpdF90
aW1lb3V0KHZvaWQgKmFyZykNCiANCiAJZXJyID0gMDsNCiBlcnJfZnJlZToNCi0JZGVsX3RpbWVy
X3N5bmMoJnd0LnRpbWVyKTsNCisJZGVsX3RpbWVyX3NodXRkb3duKCZ3dC50aW1lcik7DQogCWRl
c3Ryb3lfdGltZXJfb25fc3RhY2soJnd0LnRpbWVyKTsNCiAJZG1hX2ZlbmNlX3NpZ25hbCh3dC5m
KTsNCiAJZG1hX2ZlbmNlX3B1dCh3dC5mKTsNCi0tIA0KMi4zNS4xDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
