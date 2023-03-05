Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C85316AC0D3
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 Mar 2023 14:27:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D02483F04B
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 Mar 2023 13:27:10 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	by lists.linaro.org (Postfix) with ESMTPS id 32FC93EB80
	for <linaro-mm-sig@lists.linaro.org>; Sun,  5 Mar 2023 20:51:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=denx.de header.s=phobos-20191101 header.b=YkLzueQa;
	spf=pass (lists.linaro.org: domain of marex@denx.de designates 85.214.62.61 as permitted sender) smtp.mailfrom=marex@denx.de;
	dmarc=none
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 16AA585A1F;
	Sun,  5 Mar 2023 21:51:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1678049479;
	bh=1IIZ5cXT9MjyR4m8kfZh5MLkgJE2lkLpDwB+TkI3y0Y=;
	h=From:To:Cc:Subject:Date:From;
	b=YkLzueQasv7qLjavzVqEITMfHl1saqCyf3udKNeSCggAACg+jtf0czHeCUV+zg8Fm
	 JjRVE1dAdGR2ZOIjOjyHOb5dYMw/UC4PejWZdMnc/DCuOSG0xc7EV0Z3VEyVANr6Rr
	 Q/rdykJl6so42S7bZsB9pQa3TivCtHlGPhMM/hCLYCdkyDmAoFuAkWrP57FCke3mEt
	 e6mcwOCTs8kq6YCsdEmn3+mkQdPsxoSVScPsz8hNHaT6IZSdJ8HditB/r2NzOvOqwg
	 5VytB3U2pLL7Sd5LD2SGnuu8TG1jApGERkRFf+ic7RHJWvQJlZPVAh51Dk+dpdEyUl
	 zssuffYUD9pqA==
From: Marek Vasut <marex@denx.de>
To: linux-media@vger.kernel.org
Date: Sun,  5 Mar 2023 21:51:07 +0100
Message-Id: <20230305205107.772931-1-marex@denx.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 32FC93EB80
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[86.49.120.218:received,85.214.62.61:from];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[denx.de:s=phobos-20191101];
	R_SPF_ALLOW(-0.20)[+a:phobos.denx.de];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[denx.de,amd.com,foss.st.com,kernel.org,gmail.com,pengutronix.de,linaro.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,st-md-mailman.stormreply.com];
	ASN(0.00)[asn:6724, ipnet:85.214.0.0/15, country:DE];
	RCPT_COUNT_TWELVE(0.00)[13];
	DMARC_NA(0.00)[denx.de];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[denx.de:+];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-MailFrom: marex@denx.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MASJIN7RNPRBC6IJRPVKWUYS7MMNGLKZ
X-Message-ID-Hash: MASJIN7RNPRBC6IJRPVKWUYS7MMNGLKZ
X-Mailman-Approved-At: Mon, 06 Mar 2023 13:26:52 +0000
CC: Marek Vasut <marex@denx.de>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, Hugues Fruchet <hugues.fruchet@foss.st.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] media: stm32-dcmi: Enable incoherent buffer allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MASJIN7RNPRBC6IJRPVKWUYS7MMNGLKZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U2V0IGFsbG93X2NhY2hlX2hpbnRzIHRvIDEgZm9yIHRoZSB2YjJfcXVldWUgY2FwdHVyZSBxdWV1
ZSBpbiB0aGUNClNUTTMyTVAxNXh4IERDTUkgVjRMMiBkcml2ZXIuIFRoaXMgYWxsb3dzIHVzIHRv
IGFsbG9jYXRlIGJ1ZmZlcnMNCndpdGggdGhlIFY0TDJfTUVNT1JZX0ZMQUdfTk9OX0NPSEVSRU5U
IHNldC4gT24gU1RNMzJNUDE1eHggU29DcywNCnRoaXMgZW5hYmxlcyBjYWNoaW5nIGZvciB0aGlz
IG1lbW9yeSwgd2hpY2ggaW1wcm92ZXMgcGVyZm9ybWFuY2UNCndoZW4gYmVpbmcgcmVhZCBmcm9t
IENQVS4NCg0KVGhpcyBjaGFuZ2Ugc2hvdWxkIGJlIHNhZmUgZnJvbSByYWNlIGNvbmRpdGlvbnMg
c2luY2UgdmlkZW9idWYyDQphbHJlYWR5IGludmFsaWRhdGVzIG9yIGZsdXNoZXMgdGhlIGFwcHJv
cHJpYXRlIGNhY2hlIGxpbmVzIGluDQppdHMgcHJlcGFyZSgpIGFuZCBmaW5pc2goKSBtZXRob2Rz
Lg0KDQpUZXN0ZWQgb24gYSBTVE0zMk1QMTU3RiBTb0MuIFJlc3VsdGVkIGluIDR4IGJ1ZmZlciBh
Y2Nlc3Mgc3BlZWR1cC4NCg0KU2lnbmVkLW9mZi1ieTogTWFyZWsgVmFzdXQgPG1hcmV4QGRlbngu
ZGU+DQotLS0NCkNjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4NCkNjOiBBbGV4YW5kcmUgVG9yZ3VlIDxhbGV4YW5kcmUudG9yZ3VlQGZvc3Muc3QuY29tPg0K
Q2M6IEh1Z3VlcyBGcnVjaGV0IDxodWd1ZXMuZnJ1Y2hldEBmb3NzLnN0LmNvbT4NCkNjOiBNYXVy
byBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWJAa2VybmVsLm9yZz4NCkNjOiBNYXhpbWUgQ29xdWVs
aW4gPG1jb3F1ZWxpbi5zdG0zMkBnbWFpbC5jb20+DQpDYzogUGhpbGlwcCBaYWJlbCA8cC56YWJl
bEBwZW5ndXRyb25peC5kZT4NCkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8u
b3JnPg0KQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcNCkNjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcNCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCkNjOiBsaW51eC1zdG0zMkBz
dC1tZC1tYWlsbWFuLnN0b3JtcmVwbHkuY29tDQotLS0NCiBkcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3N0L3N0bTMyL3N0bTMyLWRjbWkuYyB8IDEgKw0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdC9zdG0zMi9zdG0z
Mi1kY21pLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N0L3N0bTMyL3N0bTMyLWRjbWkuYw0K
aW5kZXggYWQ4ZTk3NDJlMWFlNy4uMmFjNTA4ZGE1YmEzNiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vc3Qvc3RtMzIvc3RtMzItZGNtaS5jDQorKysgYi9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3N0L3N0bTMyL3N0bTMyLWRjbWkuYw0KQEAgLTIwODQsNiArMjA4NCw3IEBAIHN0
YXRpYyBpbnQgZGNtaV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KIAlxLT5t
ZW1fb3BzID0gJnZiMl9kbWFfY29udGlnX21lbW9wczsNCiAJcS0+dGltZXN0YW1wX2ZsYWdzID0g
VjRMMl9CVUZfRkxBR19USU1FU1RBTVBfTU9OT1RPTklDOw0KIAlxLT5taW5fYnVmZmVyc19uZWVk
ZWQgPSAyOw0KKwlxLT5hbGxvd19jYWNoZV9oaW50cyA9IDE7DQogCXEtPmRldiA9ICZwZGV2LT5k
ZXY7DQogDQogCXJldCA9IHZiMl9xdWV1ZV9pbml0KHEpOw0KLS0gDQoyLjM5LjINCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
