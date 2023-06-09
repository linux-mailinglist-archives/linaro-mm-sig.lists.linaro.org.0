Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2187B729289
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Jun 2023 10:17:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C2B693EF10
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Jun 2023 08:17:49 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 84AA33EF10
	for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Jun 2023 08:17:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=DMyvvowu;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 00FEC65450;
	Fri,  9 Jun 2023 08:17:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23DDEC433D2;
	Fri,  9 Jun 2023 08:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686298664;
	bh=Q3lpJIl4Z5sdoUzSuGxmM+HFKMFmLc0nDXYEbM0IvBY=;
	h=From:To:Cc:Subject:Date:From;
	b=DMyvvowuFDe9JYaxvty4pMatDHzghPPuqy6k1T12vhsZOqKn9hmQ9b7+2sOPPyUju
	 nuTm9fCFhpeV7x2GJCAQp8It3FYVdxYmVBLZpDEUi+fiViW3nPYnVxV6i7LuF09KpG
	 NKdbUYUJhEXeGmsWZXsctSZQQYxkm0rDszqHQH4RcGLM2IPLn6GLouWX9BJFNLvbTR
	 KDUcvCQpqCdIaBVOWswsmHDjdYs3I8FCftKXf/YSlmp3n0HzQVYiAKWhrZ6ou4NWuq
	 HjEWDO3udnppvGxrwN2UxVN+C+96WGNa66qX+kli0Gs1upOKKsUHYHf2ffNsziaU/e
	 rmvLWbHegeyFw==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org
Date: Fri,  9 Jun 2023 09:17:03 +0100
Message-ID: <20230609081732.3842341-1-lee@kernel.org>
X-Mailer: git-send-email 2.41.0.162.gfafddb0af9-goog
MIME-Version: 1.0
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,lists.freedesktop.org,collabora.com,redhat.com,kernel.org,ffwll.ch,gmail.com,nvidia.com,xilinx.com,freedesktop.org,ideasonboard.com,lists.linaro.org,lists.infradead.org,pengutronix.de,linaro.org];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[34];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 84AA33EF10
X-Spamd-Bar: -
Message-ID-Hash: X3QQMY5OJ5STDRPRO2LBKD3LFLAQZMJE
X-Message-ID-Hash: X3QQMY5OJ5STDRPRO2LBKD3LFLAQZMJE
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, Alex Deucher <alexander.deucher@amd.com>, amd-gfx@lists.freedesktop.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Ben Skeggs <bskeggs@redhat.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, Gourav Samaiya <gsamaiya@nvidia.com>, Haneen Mohammed <hamohammed.sa@gmail.com>, Harry Wentland <harry.wentland@amd.com>, Hyun Kwon <hyun.kwon@xilinx.com>, Jerome Glisse <glisse@freedesktop.org>, Karol Herbst <kherbst@redhat.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Leo Li <sunpeng.li@amd.com>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, Lyude Paul <lyude@redhat.com>, Matthias Brugger <matthias.bgg@gmail.com>, Melissa Wen <melissa.srw@gmail.com>, Michal Simek <michal.simek@xilinx.com>, nouveau@lists.free
 desktop.org, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Philipp Zabel <p.zabel@pengutronix.de>, Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>, Stanley Yang <Stanley.Yang@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RESEND 00/15] Rid W=1 warnings from GPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X3QQMY5OJ5STDRPRO2LBKD3LFLAQZMJE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBzZXQgaXMgcGFydCBvZiBhIGxhcmdlciBlZmZvcnQgYXR0ZW1wdGluZyB0byBjbGVhbi11
cCBXPTENCmtlcm5lbCBidWlsZHMsIHdoaWNoIGFyZSBjdXJyZW50bHkgb3ZlcndoZWxtaW5nbHkg
cmlkZGxlZCB3aXRoDQpuaWdnbHkgbGl0dGxlIHdhcm5pbmdzLg0KDQpMZWUgSm9uZXMgKDE1KToN
CiAgZHJtL3hsbngvenlucW1wX2Rpc3A6IFVzZSBjb3JyZWN0IGtlcm5lbGRvYyBmb3JtYXR0aW5n
IGluIHp5bnFtcF9kaXNwDQogIGRybS94bG54L3p5bnFtcF9kcDogRml4IGZ1bmN0aW9uIG5hbWUg
enlucW1wX2RwX2xpbmtfdHJhaW4oKSAtPg0KICAgIHp5bnFtcF9kcF90cmFpbigpDQogIGRybS92
a21zL3ZrbXNfY29tcG9zZXI6IEZpeCBhIGZldyBkaWZmZXJlbnQga2VybmVsZG9jIGZvcm1hdHRp
bmcNCiAgZHJtL21lZGlhdGVrL210a19kaXNwX2FhbDogUmVtb3ZlIGhhbGYgY29tcGxldGVkIGlu
Y29ycmVjdCBzdHJ1Y3QNCiAgICBoZWFkZXINCiAgZHJtL21lZGlhdGVrL210a19kaXNwX2Njb3Jy
OiBSZW1vdmUgaGFsZiBjb21wbGV0ZWQgaW5jb3JyZWN0IHN0cnVjdA0KICAgIGhlYWRlcg0KICBk
cm0vbm91dmVhdS9udmttL3N1YmRldi9hY3IvbHNmdzogUmVtb3ZlIHVudXNlZCB2YXJpYWJsZSAn
bG9jJw0KICBkcm0vbm91dmVhdS9udmttL3N1YmRldi9iaW9zL2luaXQ6IERlbW90ZSBhIGJ1bmNo
IG9mIGtlcm5lbC1kb2MgYWJ1c2VzDQogIGRybS9ub3V2ZWF1L252a20vc3ViZGV2L3ZvbHQvZ2sy
MGE6IERlbW90ZSBrZXJuZWxkb2MgYWJ1c2VzDQogIGRybS9ub3V2ZWF1L252a20vZW5naW5lL2dy
L2dmMTAwOiBEZW1vdGUga2VybmVsZG9jIGFidXNlDQogIGRybS9ub3V2ZWF1L252a20vZW5naW5l
L2dyL3R1MTAyOiBTdGF0aWNpZnkgbG9jYWwgZnVuY3Rpb24NCiAgICBnZjEwMF9maWZvX25vbnN0
YWxsX2Jsb2NrKCkNCiAgZHJtL2FtZC9kaXNwbGF5L2FtZGdwdV9kbS9hbWRncHVfZG1faGVscGVy
czogTW92ZSBTWU5BUFRJQ1NfREVWSUNFX0lEDQogICAgaW50byBDT05GSUdfRFJNX0FNRF9EQ19E
Q04gaWZkZWYNCiAgZHJtL25vdXZlYXUvZGlzcG52MDQvY3J0YzogRGVtb3RlIGtlcm5lbGRvYyBh
YnVzZXMNCiAgZHJtL25vdXZlYXUvbnZrbS9lbmdpbmUvZ3IvdHUxMDI6IENvbXBsZXRlbHkgcmVt
b3ZlIHVudXNlZCBmdW5jdGlvbg0KICAgIOKAmHR1MTAyX2dyX2xvYWTigJkNCiAgZHJtL3JhZGVv
bi9yYWRlb25fdHRtOiBSZW1vdmUgdW51c2VkIHZhcmlhYmxlICdyYm8nIGZyb20NCiAgICByYWRl
b25fYm9fbW92ZSgpDQogIGRybS9hbWQvYW1kZ3B1L3NkbWFfdjZfMDogRGVtb3RlIGEgYnVuY2gg
b2YgaGFsZi1jb21wbGV0ZWQgZnVuY3Rpb24NCiAgICBoZWFkZXJzDQoNCiBkcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9zZG1hX3Y2XzAuYyAgICAgICAgfCAgIDggKy0NCiAuLi4vYW1kL2Rpc3Bs
YXkvYW1kZ3B1X2RtL2FtZGdwdV9kbV9oZWxwZXJzLmMgfCAgIDYgKy0NCiBkcml2ZXJzL2dwdS9k
cm0vbWVkaWF0ZWsvbXRrX2Rpc3BfYWFsLmMgICAgICAgfCAgIDUgLQ0KIGRyaXZlcnMvZ3B1L2Ry
bS9tZWRpYXRlay9tdGtfZGlzcF9jY29yci5jICAgICB8ICAgNSAtDQogZHJpdmVycy9ncHUvZHJt
L25vdXZlYXUvZGlzcG52MDQvY3J0Yy5jICAgICAgIHwgICA0ICstDQogLi4uL2dwdS9kcm0vbm91
dmVhdS9udmttL2VuZ2luZS9nci9nZjEwMC5jICAgIHwgICAyICstDQogLi4uL2dwdS9kcm0vbm91
dmVhdS9udmttL2VuZ2luZS9nci90dTEwMi5jICAgIHwgIDEzIC0tDQogLi4uL2dwdS9kcm0vbm91
dmVhdS9udmttL3N1YmRldi9hY3IvbHNmdy5jICAgIHwgICAzICstDQogLi4uL2dwdS9kcm0vbm91
dmVhdS9udmttL3N1YmRldi9iaW9zL2luaXQuYyAgIHwgMTM2ICsrKysrKysrKy0tLS0tLS0tLQ0K
IC4uLi9ncHUvZHJtL25vdXZlYXUvbnZrbS9zdWJkZXYvdm9sdC9nazIwYS5jICB8ICAgNCArLQ0K
IGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX3R0bS5jICAgICAgICAgICB8ICAgMiAtDQog
ZHJpdmVycy9ncHUvZHJtL3ZrbXMvdmttc19jb21wb3Nlci5jICAgICAgICAgIHwgICA2ICstDQog
ZHJpdmVycy9ncHUvZHJtL3hsbngvenlucW1wX2Rpc3AuYyAgICAgICAgICAgIHwgICA2ICstDQog
ZHJpdmVycy9ncHUvZHJtL3hsbngvenlucW1wX2RwLmMgICAgICAgICAgICAgIHwgICAyICstDQog
MTQgZmlsZXMgY2hhbmdlZCwgODkgaW5zZXJ0aW9ucygrKSwgMTEzIGRlbGV0aW9ucygtKQ0KDQpD
YzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPg0KQ2M6IGFtZC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFu
Z2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4NCkNjOiBCZW4gU2tlZ2dzIDxi
c2tlZ2dzQHJlZGhhdC5jb20+DQpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+DQpDYzogQ2h1bi1LdWFuZyBIdSA8Y2h1bmt1YW5nLmh1QGtlcm5lbC5vcmc+
DQpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPg0KQ2M6IERhdmlkIEFpcmxpZSA8
YWlybGllZEBnbWFpbC5jb20+DQpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
Q2M6IEdvdXJhdiBTYW1haXlhIDxnc2FtYWl5YUBudmlkaWEuY29tPg0KQ2M6IEhhbmVlbiBNb2hh
bW1lZCA8aGFtb2hhbW1lZC5zYUBnbWFpbC5jb20+DQpDYzogSGFycnkgV2VudGxhbmQgPGhhcnJ5
LndlbnRsYW5kQGFtZC5jb20+DQpDYzogSHl1biBLd29uIDxoeXVuLmt3b25AeGlsaW54LmNvbT4N
CkNjOiBKZXJvbWUgR2xpc3NlIDxnbGlzc2VAZnJlZWRlc2t0b3Aub3JnPg0KQ2M6IEthcm9sIEhl
cmJzdCA8a2hlcmJzdEByZWRoYXQuY29tPg0KQ2M6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQu
cGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4NCkNjOiBMZW8gTGkgPHN1bnBlbmcubGlAYW1kLmNv
bT4NCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCkNjOiBsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcNCkNjOiBsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRl
YWQub3JnDQpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQpDYzogTHl1ZGUgUGF1bCA8
bHl1ZGVAcmVkaGF0LmNvbT4NCkNjOiBNYXR0aGlhcyBCcnVnZ2VyIDxtYXR0aGlhcy5iZ2dAZ21h
aWwuY29tPg0KQ2M6IE1lbGlzc2EgV2VuIDxtZWxpc3NhLnNyd0BnbWFpbC5jb20+DQpDYzogTWlj
aGFsIFNpbWVrIDxtaWNoYWwuc2ltZWtAeGlsaW54LmNvbT4NCkNjOiBub3V2ZWF1QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KQ2M6ICJQYW4sIFhpbmh1aSIgPFhpbmh1aS5QYW5AYW1kLmNvbT4NCkNj
OiBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJvbml4LmRlPg0KQ2M6IFJvZHJpZ28gU2lx
dWVpcmEgPFJvZHJpZ28uU2lxdWVpcmFAYW1kLmNvbT4NCkNjOiBSb2RyaWdvIFNpcXVlaXJhIDxy
b2RyaWdvc2lxdWVpcmFtZWxvQGdtYWlsLmNvbT4NCkNjOiBTdGFubGV5IFlhbmcgPFN0YW5sZXku
WWFuZ0BhbWQuY29tPg0KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+
DQoNCi0tIA0KMi40MS4wLjE2Mi5nZmFmZGRiMGFmOS1nb29nDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
