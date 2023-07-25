Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E418761156
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Jul 2023 12:50:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5587843E23
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Jul 2023 10:50:04 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id A9EFF3F31F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Jul 2023 10:49:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=XQVwhIoI;
	spf=pass (lists.linaro.org: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 56AE76166F;
	Tue, 25 Jul 2023 10:49:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6658DC433C8;
	Tue, 25 Jul 2023 10:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1690282196;
	bh=mqeWrjRkKEshdY5zvAqc2lyl7BsSe/D42AtpoyJoeE4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XQVwhIoIUY49cragFx1gM6ymIKwa5ilV5ALGKUGGIQiNHgJz93cydVDBMnmxtaSIW
	 7JM3+OhgI1DIekW74AbUm1y+aexaRbKgIgQdZw+gZhKrTXr7YmmJWrfUYYoW8tBIje
	 tx/9sed7cFZt5KxMMlPZXCEhzqO6Bu6vpmd8ozsU=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Date: Tue, 25 Jul 2023 12:43:30 +0200
Message-ID: <20230725104516.591974295@linuxfoundation.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725104514.821564989@linuxfoundation.org>
References: <20230725104514.821564989@linuxfoundation.org>
User-Agent: quilt/0.67
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A9EFF3F31F
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_IN_DNSWL_HI(-1.00)[52.25.139.140:received,139.178.84.217:from];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	URIBL_BLOCKED(0.00)[linuxfoundation.org:email,linuxfoundation.org:dkim];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: QGLFLDJSC77NAKKTGXF76ZLLHZQGJILH
X-Message-ID-Hash: QGLFLDJSC77NAKKTGXF76ZLLHZQGJILH
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, patches@lists.linux.dev, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 6.4 043/227] dma-buf/dma-resv: Stop leaking on krealloc() failure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QGLFLDJSC77NAKKTGXF76ZLLHZQGJILH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0K
Y29tbWl0IDA1YWJiM2JlOTFkODc4ODMyODIzMWVlMDI5NzNhYjNkNDdmNWUzZDIgdXBzdHJlYW0u
DQoNCkN1cnJlbnRseSBkbWFfcmVzdl9nZXRfZmVuY2VzKCkgd2lsbCBsZWFrIHRoZSBwcmV2aW91
c2x5DQphbGxvY2F0ZWQgYXJyYXkgaWYgdGhlIGZlbmNlIGl0ZXJhdGlvbiBnb3QgcmVzdGFydGVk
IGFuZA0KdGhlIGtyZWFsbG9jX2FycmF5KCkgZmFpbHMuDQoNCkZyZWUgdGhlIG9sZCBhcnJheSBi
eSBoYW5kLCBhbmQgbWFrZSBzdXJlIHdlIHN0aWxsIGNsZWFyDQp0aGUgcmV0dXJuZWQgKmZlbmNl
cyBzbyB0aGUgY2FsbGVyIHdvbid0IGVuZCB1cCBhY2Nlc3NpbmcNCmZyZWVkIG1lbW9yeS4gU29t
ZSAoYnV0IG5vdCBhbGwpIG9mIHRoZSBjYWxsZXJzIG9mDQpkbWFfcmVzdl9nZXRfZmVuY2VzKCkg
c2VlbSB0byBzdGlsbCB0cmF3bCB0aHJvdWdoIHRoZQ0KYXJyYXkgZXZlbiB3aGVuIGRtYV9yZXN2
X2dldF9mZW5jZXMoKSBmYWlsZWQuIEFuZCBsZXQncw0KemVybyBvdXQgKm51bV9mZW5jZXMgYXMg
d2VsbCBmb3IgZ29vZCBtZWFzdXJlLg0KDQpDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxA
bGluYXJvLm9yZz4NCkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+DQpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQpDYzogZHJpLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KRml4
ZXM6IGQzYzgwNjk4YzlmNSAoImRtYS1idWY6IHVzZSBuZXcgaXRlcmF0b3IgaW4gZG1hX3Jlc3Zf
Z2V0X2ZlbmNlcyB2MyIpDQpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnDQpMaW5r
OiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAyMzA3MTMx
OTQ3NDUuMTc1MS0xLXZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tDQpTaWduZWQtb2ZmLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpTaWduZWQtb2Zm
LWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPg0KLS0t
DQogZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgfCAgIDEzICsrKysrKysrKy0tLS0NCiAxIGZp
bGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KDQotLS0gYS9kcml2
ZXJzL2RtYS1idWYvZG1hLXJlc3YuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMN
CkBAIC01NzEsNiArNTcxLDcgQEAgaW50IGRtYV9yZXN2X2dldF9mZW5jZXMoc3RydWN0IGRtYV9y
ZXN2DQogCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZjdXJzb3IsIGZlbmNlKSB7
DQogDQogCQlpZiAoZG1hX3Jlc3ZfaXRlcl9pc19yZXN0YXJ0ZWQoJmN1cnNvcikpIHsNCisJCQlz
dHJ1Y3QgZG1hX2ZlbmNlICoqbmV3X2ZlbmNlczsNCiAJCQl1bnNpZ25lZCBpbnQgY291bnQ7DQog
DQogCQkJd2hpbGUgKCpudW1fZmVuY2VzKQ0KQEAgLTU3OSwxMyArNTgwLDE3IEBAIGludCBkbWFf
cmVzdl9nZXRfZmVuY2VzKHN0cnVjdCBkbWFfcmVzdg0KIAkJCWNvdW50ID0gY3Vyc29yLm51bV9m
ZW5jZXMgKyAxOw0KIA0KIAkJCS8qIEV2ZW50dWFsbHkgcmUtYWxsb2NhdGUgdGhlIGFycmF5ICov
DQotCQkJKmZlbmNlcyA9IGtyZWFsbG9jX2FycmF5KCpmZW5jZXMsIGNvdW50LA0KLQkJCQkJCSBz
aXplb2Yodm9pZCAqKSwNCi0JCQkJCQkgR0ZQX0tFUk5FTCk7DQotCQkJaWYgKGNvdW50ICYmICEq
ZmVuY2VzKSB7DQorCQkJbmV3X2ZlbmNlcyA9IGtyZWFsbG9jX2FycmF5KCpmZW5jZXMsIGNvdW50
LA0KKwkJCQkJCSAgICBzaXplb2Yodm9pZCAqKSwNCisJCQkJCQkgICAgR0ZQX0tFUk5FTCk7DQor
CQkJaWYgKGNvdW50ICYmICFuZXdfZmVuY2VzKSB7DQorCQkJCWtmcmVlKCpmZW5jZXMpOw0KKwkJ
CQkqZmVuY2VzID0gTlVMTDsNCisJCQkJKm51bV9mZW5jZXMgPSAwOw0KIAkJCQlkbWFfcmVzdl9p
dGVyX2VuZCgmY3Vyc29yKTsNCiAJCQkJcmV0dXJuIC1FTk9NRU07DQogCQkJfQ0KKwkJCSpmZW5j
ZXMgPSBuZXdfZmVuY2VzOw0KIAkJfQ0KIA0KIAkJKCpmZW5jZXMpWygqbnVtX2ZlbmNlcykrK10g
PSBkbWFfZmVuY2VfZ2V0KGZlbmNlKTsNCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
