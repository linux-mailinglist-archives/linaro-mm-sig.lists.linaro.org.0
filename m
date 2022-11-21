Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A2545632919
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Nov 2022 17:12:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7E7E43ED8F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Nov 2022 16:12:42 +0000 (UTC)
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
	by lists.linaro.org (Postfix) with ESMTPS id CD4213EC6B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Nov 2022 16:12:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=O1s0wsU7;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=7vqKuxCg;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.220.28 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id CE22A220D0;
	Mon, 21 Nov 2022 16:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1669047147; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=eoTtLtRQFJkOuXTGDQgCRnPiZdbkTxUys+1kYjgptDA=;
	b=O1s0wsU7jaRbS7uwWdjtvpv8yVeyW/G4kGex8BtkT5cDGxmlAtCSy9jC9JEaQKDqNq5UL/
	nx76hCSr+camGVAE8Cc9m9HJ0irgdZe3Msjc+lEIOsuhvVbLG53vJQdo6pyh0JAg+z7GmB
	+GuXjFpLt7bj01jx81hhhDHcn9BQ79g=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1669047147;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=eoTtLtRQFJkOuXTGDQgCRnPiZdbkTxUys+1kYjgptDA=;
	b=7vqKuxCgfP1ONjE5ztkXAk4X8lDcPy2w61Y1alJPxHwjwoSBGbFdZR+p5JlBWo8Nhy4p8Z
	TIacpRrI54iRtzDQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 949BB1377F;
	Mon, 21 Nov 2022 16:12:27 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id WY4TI2uje2NyWQAAMHmgww
	(envelope-from <tzimmermann@suse.de>); Mon, 21 Nov 2022 16:12:27 +0000
Message-ID: <6d6728a2-03bc-0207-a1af-2df65c601df8@suse.de>
Date: Mon, 21 Nov 2022 17:12:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: ChunyouTang <tangchunyou@163.com>, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, airlied@gmail.com, daniel@ffwll.ch,
 sumit.semwal@linaro.org, christian.koenig@amd.com
References: <20221119064131.364-1-tangchunyou@163.com>
From: Thomas Zimmermann <tzimmermann@suse.de>
In-Reply-To: <20221119064131.364-1-tangchunyou@163.com>
X-Rspamd-Queue-Id: CD4213EC6B
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.220.0/27];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	MIME_GOOD(-0.20)[multipart/signed,multipart/mixed,text/plain];
	MIME_BASE64_TEXT(0.10)[];
	FREEMAIL_TO(0.00)[163.com,linux.intel.com,kernel.org,gmail.com,ffwll.ch,linaro.org,amd.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	ASN(0.00)[asn:29298, ipnet:195.135.220.0/23, country:DE];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[suse.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ATTACHMENT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_IN_DNSWL_FAIL(0.00)[195.135.220.28:query timed out]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 5FL6XIMERDUVWDBDJFOS5XAJCCBEPQDV
X-Message-ID-Hash: 5FL6XIMERDUVWDBDJFOS5XAJCCBEPQDV
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/3] drm/gem-shmem: When drm_gem_object_init failed, should release object
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5FL6XIMERDUVWDBDJFOS5XAJCCBEPQDV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4010901806887295235=="

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4010901806887295235==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------178vOI27ZMnlsZ4D0f2x8z52"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------178vOI27ZMnlsZ4D0f2x8z52
Content-Type: multipart/mixed; boundary="------------BSq1CN0WqfyR8W7YHLAcqEGh";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: ChunyouTang <tangchunyou@163.com>, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, airlied@gmail.com, daniel@ffwll.ch,
 sumit.semwal@linaro.org, christian.koenig@amd.com
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Message-ID: <6d6728a2-03bc-0207-a1af-2df65c601df8@suse.de>
Subject: Re: [PATCH v2 3/3] drm/gem-shmem: When drm_gem_object_init failed,
 should release object
References: <20221119064131.364-1-tangchunyou@163.com>
In-Reply-To: <20221119064131.364-1-tangchunyou@163.com>

--------------BSq1CN0WqfyR8W7YHLAcqEGh
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMTkuMTEuMjIgdW0gMDc6NDEgc2NocmllYiBDaHVueW91VGFuZzoNCj4gd2hl
biBnb3RvIGVycl9mcmVlLCB0aGUgb2JqZWN0IGhhZCBpbml0LCBzbyBpdCBzaG91bGQgYmUg
cmVsZWFzZSB3aGVuIGZhaWwuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBDaHVueW91VGFuZyA8
dGFuZ2NodW55b3VAMTYzLmNvbT4NCg0KVGhhbmtzIGEgbG90LiBJIG1lcmdlZCB0aGUgcGF0
Y2ggaW50byBkcm0tbWlzYy1uZXh0Lg0KDQpCZXN0IHJlZ2FyZHMNClRob21hcw0KDQo+IC0t
LQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMgICAgICAgICAgICAgIHwgMTkgKysr
KysrKysrKysrKysrKy0tLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hl
bHBlci5jIHwgIDQgKysrLQ0KPiAgIGluY2x1ZGUvZHJtL2RybV9nZW0uaCAgICAgICAgICAg
ICAgICAgIHwgIDEgKw0KPiAgIDMgZmlsZXMgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwg
NCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJt
X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYw0KPiBpbmRleCA4YjY4YTNjMWU2
YWIuLjNlMmU2NjA3MTdjMyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9n
ZW0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jDQo+IEBAIC0xNjksNiAr
MTY5LDIwIEBAIHZvaWQgZHJtX2dlbV9wcml2YXRlX29iamVjdF9pbml0KHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYsDQo+ICAgfQ0KPiAgIEVYUE9SVF9TWU1CT0woZHJtX2dlbV9wcml2YXRl
X29iamVjdF9pbml0KTsNCj4gICANCj4gKy8qKg0KPiArICogZHJtX2dlbV9wcml2YXRlX29i
amVjdF9maW5pIC0gRmluYWxpemUgYSBmYWlsZWQgZHJtX2dlbV9vYmplY3QNCj4gKyAqIEBv
Ymo6IGRybV9nZW1fb2JqZWN0DQo+ICsgKg0KPiArICogVW5pbml0aWFsaXplIGFuIGFscmVh
ZHkgYWxsb2NhdGVkIEdFTSBvYmplY3Qgd2hlbiBpdCBpbml0aWFsaXplZCBmYWlsZWQNCj4g
KyAqLw0KPiArdm9pZCBkcm1fZ2VtX3ByaXZhdGVfb2JqZWN0X2Zpbmkoc3RydWN0IGRybV9n
ZW1fb2JqZWN0ICpvYmopDQo+ICt7DQo+ICsJV0FSTl9PTihvYmotPmRtYV9idWYpOw0KPiAr
DQo+ICsJZG1hX3Jlc3ZfZmluaSgmb2JqLT5fcmVzdik7DQo+ICt9DQo+ICtFWFBPUlRfU1lN
Qk9MKGRybV9nZW1fcHJpdmF0ZV9vYmplY3RfZmluaSk7DQo+ICsNCj4gICAvKioNCj4gICAg
KiBkcm1fZ2VtX29iamVjdF9oYW5kbGVfZnJlZSAtIHJlbGVhc2UgcmVzb3VyY2VzIGJvdW5k
IHRvIHVzZXJzcGFjZSBoYW5kbGVzDQo+ICAgICogQG9iajogR0VNIG9iamVjdCB0byBjbGVh
biB1cC4NCj4gQEAgLTkzMCwxMiArOTQ0LDExIEBAIGRybV9nZW1fcmVsZWFzZShzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdmF0ZSkNCj4gICB2
b2lkDQo+ICAgZHJtX2dlbV9vYmplY3RfcmVsZWFzZShzdHJ1Y3QgZHJtX2dlbV9vYmplY3Qg
Km9iaikNCj4gICB7DQo+IC0JV0FSTl9PTihvYmotPmRtYV9idWYpOw0KPiAtDQo+ICAgCWlm
IChvYmotPmZpbHApDQo+ICAgCQlmcHV0KG9iai0+ZmlscCk7DQo+ICAgDQo+IC0JZG1hX3Jl
c3ZfZmluaSgmb2JqLT5fcmVzdik7DQo+ICsJZHJtX2dlbV9wcml2YXRlX29iamVjdF9maW5p
KG9iaik7DQo+ICsNCj4gICAJZHJtX2dlbV9mcmVlX21tYXBfb2Zmc2V0KG9iaik7DQo+ICAg
CWRybV9nZW1fbHJ1X3JlbW92ZShvYmopOw0KPiAgIH0NCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2Ry
bV9nZW1fc2htZW1faGVscGVyLmMNCj4gaW5kZXggMzUxMzhmOGEzNzVjLi5kYjczMjM0ZWRj
YmUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBl
ci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jDQo+
IEBAIC03OSw4ICs3OSwxMCBAQCBfX2RybV9nZW1fc2htZW1fY3JlYXRlKHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYsIHNpemVfdCBzaXplLCBib29sIHByaXZhdGUpDQo+ICAgCX0gZWxzZSB7
DQo+ICAgCQlyZXQgPSBkcm1fZ2VtX29iamVjdF9pbml0KGRldiwgb2JqLCBzaXplKTsNCj4g
ICAJfQ0KPiAtCWlmIChyZXQpDQo+ICsJaWYgKHJldCkgew0KPiArCQlkcm1fZ2VtX3ByaXZh
dGVfb2JqZWN0X2Zpbmkob2JqKTsNCj4gICAJCWdvdG8gZXJyX2ZyZWU7DQo+ICsJfQ0KPiAg
IA0KPiAgIAlyZXQgPSBkcm1fZ2VtX2NyZWF0ZV9tbWFwX29mZnNldChvYmopOw0KPiAgIAlp
ZiAocmV0KQ0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2dlbS5oIGIvaW5jbHVk
ZS9kcm0vZHJtX2dlbS5oDQo+IGluZGV4IGJkNDJmMjVlNDQ5Yy4uOWIxZmViMDMwNjlkIDEw
MDY0NA0KPiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fZ2VtLmgNCj4gKysrIGIvaW5jbHVkZS9k
cm0vZHJtX2dlbS5oDQo+IEBAIC00MDUsNiArNDA1LDcgQEAgaW50IGRybV9nZW1fb2JqZWN0
X2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwNCj4gICAJCQlzdHJ1Y3QgZHJtX2dlbV9v
YmplY3QgKm9iaiwgc2l6ZV90IHNpemUpOw0KPiAgIHZvaWQgZHJtX2dlbV9wcml2YXRlX29i
amVjdF9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsDQo+ICAgCQkJCSBzdHJ1Y3QgZHJt
X2dlbV9vYmplY3QgKm9iaiwgc2l6ZV90IHNpemUpOw0KPiArdm9pZCBkcm1fZ2VtX3ByaXZh
dGVfb2JqZWN0X2Zpbmkoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopOw0KPiAgIHZvaWQg
ZHJtX2dlbV92bV9vcGVuKHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKTsNCj4gICB2b2lk
IGRybV9nZW1fdm1fY2xvc2Uoc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpOw0KPiAgIGlu
dCBkcm1fZ2VtX21tYXBfb2JqKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLCB1bnNpZ25l
ZCBsb25nIG9ial9zaXplLA0KDQotLSANClRob21hcyBaaW1tZXJtYW5uDQpHcmFwaGljcyBE
cml2ZXIgRGV2ZWxvcGVyDQpTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgN
Ck1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQ0KKEhSQiAzNjgwOSwg
QUcgTsO8cm5iZXJnKQ0KR2VzY2jDpGZ0c2bDvGhyZXI6IEl2byBUb3Rldg0K

--------------BSq1CN0WqfyR8W7YHLAcqEGh--

--------------178vOI27ZMnlsZ4D0f2x8z52
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEExndm/fpuMUdwYFFolh/E3EQov+AFAmN7o2sFAwAAAAAACgkQlh/E3EQov+A/
cw/+OskibjtV/WFpXmKmO5DqHHMvgaSmrDZnnXTNtqEddrnW1cDSa2iwX/8Lj8LbiFF1viiBNQ/k
7GQ1OSCGLo8R6nHFtwqOzL6oJiPhg+5odV0yNEZsF1qXLWkt/oIAU2jUUItQP0l+BqxuaA9BIVkZ
RxCAqAF7Vmkr0BnGLNslvQ9mbj9wi/qtFQZsMEL1b5uZQnflnXvWfWfWEwRCAC8PfLL/oCNEmU4X
OAfcyaQQgG76Fk3S+VJXlUx8aZgHbrZHnOY6YciV/8hwtTTHu+KHw1Mmk7MVrCVkZH7j4RAmMevJ
kYJ3BbpPXWFQryBTdcf/fcFx2gvTE5YgoXXJLPULJONSBP6OqgyCSDw9ylksDoqM2/jGV5YU2I36
Ke556SeB04wROSk/+uIi2k1NDtSZEeRt2AzGICkLe5eenSeEKRqqZ7G5xpGP/lAESrud1KfrHf1L
nR2yWK4VSpycrUYt7X1nbKr9X76d+SpC780GWKHhmj9NBxeEIyOnyCgUU7BOVE54R1cbA4k/WK+8
2tVTxPkIYDAXyLPvq3715hgoDkM7nhcGLwoSmqbUz0bENN47tiPNkViCjvSTn72fxDMmMZ8vuwyN
ZVX28A58Dhs/lVGmB/ehga4QylzbeE0tOYrv+y01L1XqIh5KirzTBX8/LMvDNYSErlbCQ+Jz/3cH
RHw=
=gwHh
-----END PGP SIGNATURE-----

--------------178vOI27ZMnlsZ4D0f2x8z52--

--===============4010901806887295235==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4010901806887295235==--
