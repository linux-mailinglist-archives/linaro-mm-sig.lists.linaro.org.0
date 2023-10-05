Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4993D7B9B75
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Oct 2023 09:44:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 56C8B40C85
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Oct 2023 07:44:48 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
	by lists.linaro.org (Postfix) with ESMTPS id 4156540C33
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Oct 2023 07:44:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=xAOCwKzd;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=VUcRuG66;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 587E71F8C1;
	Thu,  5 Oct 2023 07:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1696491884; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=6Fiw1QxWqAmbnUUUEcuKx0CG3fBEsJS495hprxqjYac=;
	b=xAOCwKzdRrM6ImgS0E70wSwEHxqJGNvgkx4MdGrA9CkgoYf5HayXu4l7mDt9wRSfB4XeCQ
	RUZdMdwXr6vUNGX69TmatzjZeq8V1/DTKRpZ5FgePbIsy7D3pKMOXhcU7vHQalwoADV9qH
	LuS8u6/8qbED3lvZ1cxYc8aWTMeK++k=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1696491884;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=6Fiw1QxWqAmbnUUUEcuKx0CG3fBEsJS495hprxqjYac=;
	b=VUcRuG66ejbNj2wAGn4YE9vaLEmeZ3HJoA3RXBglmQ3wGkpGkgpOir3jBfaGYaeeGlGeiJ
	vGZRk7lrcfZ+/DCw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id E6D8A139C2;
	Thu,  5 Oct 2023 07:44:43 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id iXn5M2tpHmWbRAAAMHmgww
	(envelope-from <tzimmermann@suse.de>); Thu, 05 Oct 2023 07:44:43 +0000
Message-ID: <fed1cbf3-0926-4895-a8ba-d6fa9fd53dbe@suse.de>
Date: Thu, 5 Oct 2023 09:44:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Oleksandr Natalenko <oleksandr@natalenko.name>,
 Matthew Wilcox <willy@infradead.org>
References: <13360591.uLZWGnKmhe@natalenko.name>
 <2300189.ElGaqSPkdT@natalenko.name> <ZRrUjcWqtmzPV3Fs@casper.infradead.org>
 <2160215.irdbgypaU6@natalenko.name>
From: Thomas Zimmermann <tzimmermann@suse.de>
Autocrypt: addr=tzimmermann@suse.de; keydata=
 xsBNBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAHNJ1Rob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPsLAjgQTAQgAOAIb
 AwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftODH
 AAoJEGgNwR1TC3ojx1wH/0hKGWugiqDgLNXLRD/4TfHBEKmxIrmfu9Z5t7vwUKfwhFL6hqvo
 lXPJJKQpQ2z8+X2vZm/slsLn7J1yjrOsoJhKABDi+3QWWSGkaGwRJAdPVVyJMfJRNNNIKwVb
 U6B1BkX2XDKDGffF4TxlOpSQzdtNI/9gleOoUA8+jy8knnDYzjBNOZqLG2FuTdicBXblz0Mf
 vg41gd9kCwYXDnD91rJU8tzylXv03E75NCaTxTM+FBXPmsAVYQ4GYhhgFt8S2UWMoaaABLDe
 7l5FdnLdDEcbmd8uLU2CaG4W2cLrUaI4jz2XbkcPQkqTQ3EB67hYkjiEE6Zy3ggOitiQGcqp
 j//OwE0EWznS4AEIAMYmP4M/V+T5RY5at/g7rUdNsLhWv1APYrh9RQefODYHrNRHUE9eosYb
 T6XMryR9hT8XlGOYRwKWwiQBoWSDiTMo/Xi29jUnn4BXfI2px2DTXwc22LKtLAgTRjP+qbU6
 3Y0xnQN29UGDbYgyyK51DW3H0If2a3JNsheAAK+Xc9baj0LGIc8T9uiEWHBnCH+RdhgATnWW
 GKdDegUR5BkDfDg5O/FISymJBHx2Dyoklv5g4BzkgqTqwmaYzsl8UxZKvbaxq0zbehDda8lv
 hFXodNFMAgTLJlLuDYOGLK2AwbrS3Sp0AEbkpdJBb44qVlGm5bApZouHeJ/+n+7r12+lqdsA
 EQEAAcLAdgQYAQgAIAIbDBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftOH6AAoJEGgNwR1T
 C3ojVSkIALpAPkIJPQoURPb1VWjh34l0HlglmYHvZszJWTXYwavHR8+k6Baa6H7ufXNQtThR
 yIxJrQLW6rV5lm7TjhffEhxVCn37+cg0zZ3j7zIsSS0rx/aMwi6VhFJA5hfn3T0TtrijKP4A
 SAQO9xD1Zk9/61JWk8OysuIh7MXkl0fxbRKWE93XeQBhIJHQfnc+YBLprdnxR446Sh8Wn/2D
 Ya8cavuWf2zrB6cZurs048xe0UbSW5AOSo4V9M0jzYI4nZqTmPxYyXbm30Kvmz0rYVRaitYJ
 4kyYYMhuULvrJDMjZRvaNe52tkKAvMevcGdt38H4KSVXAylqyQOW5zvPc4/sq9c=
In-Reply-To: <2160215.irdbgypaU6@natalenko.name>
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.99 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.220.0/27:c];
	MIME_GOOD(-0.20)[multipart/signed,multipart/mixed,text/plain];
	MIME_BASE64_TEXT(0.10)[];
	XM_UA_NO_VERSION(0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~];
	ASN(0.00)[asn:29298, ipnet:195.135.220.0/23, country:DE];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[suse.de:+];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,vger.kernel.org,lists.freedesktop.org,amd.com,lists.linaro.org,kvack.org,kernel.org,gmail.com,linux-foundation.org,linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_ATTACHMENT(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4156540C33
Message-ID-Hash: VP5D7HFX5UNO5ZRB42JBHJLPMCVULNGX
X-Message-ID-Hash: VP5D7HFX5UNO5ZRB42JBHJLPMCVULNGX
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Linux Regressions <regressions@lists.linux.dev>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, Maxime Ripard <mripard@kernel.org>, Bagas Sanjaya <bagasdotme@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [REGRESSION] BUG: KFENCE: memory corruption in drm_gem_put_pages+0x186/0x250
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VP5D7HFX5UNO5ZRB42JBHJLPMCVULNGX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============5800420006518098616=="

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5800420006518098616==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------72PmBn0Mbk7dBZYhSA00TrME"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------72PmBn0Mbk7dBZYhSA00TrME
Content-Type: multipart/mixed; boundary="------------irKYM1Z83udZBdlPGECxWYUo";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Oleksandr Natalenko <oleksandr@natalenko.name>,
 Matthew Wilcox <willy@infradead.org>
Cc: Linux Regressions <regressions@lists.linux.dev>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 Maxime Ripard <mripard@kernel.org>, Bagas Sanjaya <bagasdotme@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
Message-ID: <fed1cbf3-0926-4895-a8ba-d6fa9fd53dbe@suse.de>
Subject: Re: [REGRESSION] BUG: KFENCE: memory corruption in
 drm_gem_put_pages+0x186/0x250
References: <13360591.uLZWGnKmhe@natalenko.name>
 <2300189.ElGaqSPkdT@natalenko.name> <ZRrUjcWqtmzPV3Fs@casper.infradead.org>
 <2160215.irdbgypaU6@natalenko.name>
In-Reply-To: <2160215.irdbgypaU6@natalenko.name>

--------------irKYM1Z83udZBdlPGECxWYUo
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMDIuMTAuMjMgdW0gMTc6Mzggc2NocmllYiBPbGVrc2FuZHIgTmF0YWxlbmtv
Og0KPiBPbiBwb25kxJtsw60gMi4gxZnDrWpuYSAyMDIzIDE2OjMyOjQ1IENFU1QgTWF0dGhl
dyBXaWxjb3ggd3JvdGU6DQo+PiBPbiBNb24sIE9jdCAwMiwgMjAyMyBhdCAwMTowMjo1MlBN
ICswMjAwLCBPbGVrc2FuZHIgTmF0YWxlbmtvIHdyb3RlOg0KPj4+Pj4+PiBCVUc6IEtGRU5D
RTogbWVtb3J5IGNvcnJ1cHRpb24gaW4gZHJtX2dlbV9wdXRfcGFnZXMrMHgxODYvMHgyNTAN
Cj4+Pj4+Pj4NCj4+Pj4+Pj4gQ29ycnVwdGVkIG1lbW9yeSBhdCAweDAwMDAwMDAwZTE3M2Ey
OTQgWyAhICEgISAhICEgISAhICEgISAhICEgISAhICEgISAhIF0gKGluIGtmZW5jZS0jMTA4
KToNCj4+Pj4+Pj4gICBkcm1fZ2VtX3B1dF9wYWdlcysweDE4Ni8weDI1MA0KPj4+Pj4+PiAg
IGRybV9nZW1fc2htZW1fcHV0X3BhZ2VzX2xvY2tlZCsweDQzLzB4YzANCj4+Pj4+Pj4gICBk
cm1fZ2VtX3NobWVtX29iamVjdF92dW5tYXArMHg4My8weGUwDQo+Pj4+Pj4+ICAgZHJtX2dl
bV92dW5tYXBfdW5sb2NrZWQrMHg0Ni8weGIwDQo+Pj4+Pj4+ICAgZHJtX2ZiZGV2X2dlbmVy
aWNfaGVscGVyX2ZiX2RpcnR5KzB4MWRjLzB4MzEwDQo+Pj4+Pj4+ICAgZHJtX2ZiX2hlbHBl
cl9kYW1hZ2Vfd29yaysweDk2LzB4MTcwDQo+Pj4NCj4+PiBNYXR0aGV3LCBiZWZvcmUgSSBz
dGFydCBkYW5jaW5nIGFyb3VuZCwgZG8geW91IHRoaW5rIF5eIGNvdWxkIGhhdmUgdGhlIHNh
bWUgY2F1c2UgYXMgMGI2MmFmMjhmMjQ5YjljNDAzNmEwNWFjZmIwNTMwNThkYzAyZTJlMiB3
aGljaCBnb3QgZml4ZWQgYnkgODYzYThlYjNmMjcwOThiNDI3NzJmNjY4ZTM5NzdmZjRjYWUx
MGIwND8NCj4+DQo+PiBZZXMsIGVudGlyZWx5IHBsYXVzaWJsZS4gIEkgdGhpbmsgeW91IGhh
dmUgdHdvIHVzZWZ1bCBwb2ludHMgdG8gbG9vayBhdA0KPj4gYmVmb3JlIGRlbHZpbmcgaW50
byBhIGZ1bGwgYmlzZWN0IC0tIDg2M2E4ZSBhbmQgdGhlIHBhcmVudCBvZiAwYjYyYWYuDQo+
PiBJZiBlaXRoZXIgb2YgdGhlbSB3b3JrLCBJIHRoaW5rIHlvdSBoYXZlIG5vIG1vcmUgd29y
ayB0byBkby4NCj4gDQo+IE9LLCBJJ3ZlIGRpZCB0aGlzIGFnYWluc3QgdjYuNS41Og0KPiAN
Cj4gYGBgDQo+IGdpdCBsb2cgLS1vbmVsaW5lIEhFQUR+My4uDQo+IDdjMWU3Njk1Y2E5Yjgg
KEhFQUQgLT4gdGVzdCkgUmV2ZXJ0ICJtbTogcmVtb3ZlIHN0cnVjdCBwYWdldmVjIg0KPiA4
ZjJhZDUzYjZlYWM2IFJldmVydCAibW06IHJlbW92ZSBjaGVja19tb3ZlX3VuZXZpY3RhYmxl
X3BhZ2VzKCkiDQo+IGZhMWUzYzBiNTQ1M2MgUmV2ZXJ0ICJkcm06IGNvbnZlcnQgZHJtX2dl
bV9wdXRfcGFnZXMoKSB0byB1c2UgYSBmb2xpb19iYXRjaCINCj4gYGBgDQo+IA0KPiB0aGVu
IHJlYm9vdGVkIHRoZSBob3N0IG11bHRpcGxlIHRpbWVzLCBhbmQgdGhlIGlzc3VlIGlzIG5v
dCBzZWVuIGFueSBtb3JlLg0KPiANCj4gU28gSSBndWVzcyAzMjkxZTA5YTQ2Mzg3MDYxMGI4
MjI3ZjMyYjE2YjE5YTU4N2VkZjMzIGlzIHRoZSBjdWxwcml0Lg0KDQpJZ25vcmUgbXkgb3Ro
ZXIgZW1haWwuIEl0J3MgYXBwYXJlbnRseSBiZWVuIGZpeGVkIGFscmVhZHkuIFRoYW5rcyEN
Cg0KQmVzdCByZWdhcmRzDQpUaG9tYXMNCg0KPiANCj4gVGhhbmtzLg0KPiANCg0KLS0gDQpU
aG9tYXMgWmltbWVybWFubg0KR3JhcGhpY3MgRHJpdmVyIERldmVsb3Blcg0KU1VTRSBTb2Z0
d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJIDQpGcmFua2Vuc3RyYXNzZSAxNDYsIDkwNDYx
IE51ZXJuYmVyZywgR2VybWFueQ0KR0Y6IEl2byBUb3RldiwgQW5kcmV3IE15ZXJzLCBBbmRy
ZXcgTWNEb25hbGQsIEJvdWRpZW4gTW9lcm1hbg0KSFJCIDM2ODA5IChBRyBOdWVybmJlcmcp
DQo=

--------------irKYM1Z83udZBdlPGECxWYUo--

--------------72PmBn0Mbk7dBZYhSA00TrME
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEExndm/fpuMUdwYFFolh/E3EQov+AFAmUeaWsFAwAAAAAACgkQlh/E3EQov+C8
IQ//f7UtB0BiFOP/urp8ifj2BA++IH7AahthXC/eA6+2pPwYjw/fe9YrnNsXHKZkmRoa+txpuWSO
IqfBW945oex2UlDLbj1vlaZ4aGlPDxnRwcGbabDtsZ6G/tGVquNiLTSmetw/tigqXEIoH1w75zdS
zUBPyCLzeyfjHEdEu6A/HbaP7jhr7+ueRJxx9r2EVyP4CEZ4RI4ZepOMf0DuANhXUZ1Cu0ut3KiU
ncNevZo+WHor0sZq1bNWzJ9CUgNk0sqZux8KPnd5kOxzK3BiTivKoLJGOmjA3SeanTipgLEu+aK+
Dyjm/v211t64CXuw0pAaGG0Ha/moJ9XSd/r9NiKFxfvs1tsV/+vFjiXZbInjzIj43YhNpywfMcGF
MzV+hmEhMqugK0P/Holb1s5MQJbR6Bq8FE8lMeK3lxC3c0/71hcGyK/PwPJXLXinFmVIGw74Qg7E
jVKHdCxgM1Q/gbPuaeX+o4xD+DbJlqYofv+XBMpOJtcPQ/OsdGGW1+S/fR33yNwJ11k3E/Nphji/
Amv1gluY6iTqaHmIJfnsBAA+Z0Q6dgTKhue771qOyYu4uIoK6bFnv7yx9iXBe9khb3LOIIlselMZ
CQoPI57RQr1N8QA3UZ3VYC4NqTRgNcXhAxNVLpwVlNrGjIm17nrbB/BlC0NlrBHLkNeRE7lck58Z
rRo=
=C3sp
-----END PGP SIGNATURE-----

--------------72PmBn0Mbk7dBZYhSA00TrME--

--===============5800420006518098616==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============5800420006518098616==--
