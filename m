Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E31B860C351
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 07:35:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E8B923F491
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 05:35:02 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
	by lists.linaro.org (Postfix) with ESMTPS id 2CDE23EE64
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Sep 2022 21:40:49 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 19CC21F45F;
	Wed, 28 Sep 2022 21:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1664401248; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=C18vkSCkEp0R0j/E8doyhXlqBRc6MmmoczHaFz5Tq/o=;
	b=O8ZKN2zJZST2anqWW6kCZ7PFlJtkR+DhFF/E1xFtpBjfMisY/NEE2VUHIT0ctG6+BRKpcm
	TFzItcWnIOwSwp96McUWnDjo0baCWUX3p/6aNYk16N1G1gVpmFAU0HxXjLM93Ltz5am9pC
	6mcBPOCE9PClr4mk2WyQ3I6f95q7OjY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1664401248;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=C18vkSCkEp0R0j/E8doyhXlqBRc6MmmoczHaFz5Tq/o=;
	b=QuVwGzEY77p785Z+8T99wXOp96mLv9PVymdpRO3H5bysX/SgsIeBkJWmKXpwJqWMN6hRxn
	P80vd3XHeULykLAg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id DA18F13A84;
	Wed, 28 Sep 2022 21:40:46 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id pwxsNF6/NGNaHwAAMHmgww
	(envelope-from <vbabka@suse.cz>); Wed, 28 Sep 2022 21:40:46 +0000
Message-ID: <d5cb63f4-b1f5-9862-c31c-c8c6c4cb41df@suse.cz>
Date: Wed, 28 Sep 2022 23:39:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Content-Language: en-US
To: Kees Cook <keescook@chromium.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-2-keescook@chromium.org>
 <CAMuHMdXK+UN1YVZm9DenuXAM8hZRUZJwp=SXsueP7sWiVU3a9A@mail.gmail.com>
 <202209281011.66DD717D@keescook>
From: Vlastimil Babka <vbabka@suse.cz>
In-Reply-To: <202209281011.66DD717D@keescook>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: 2CDE23EE64
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[195.135.220.29:from];
	R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.220.0/24];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[suse.cz];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[39];
	FREEMAIL_CC(0.00)[linux.com,kernel.org,google.com,lge.com,linux-foundation.org,linux.dev,gmail.com,kvack.org,intel.com,davemloft.net,redhat.com,linuxfoundation.org,toxicpanda.com,suse.com,linaro.org,amd.com,fb.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,openvswitch.org,lists.linux.dev];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[suse.cz:+];
	FROM_EQ_ENVFROM(0.00)[];
	URIBL_BLOCKED(0.00)[linux.com:email,suse.cz:email,suse.cz:dkim,kvack.org:email];
	ASN(0.00)[asn:29298, ipnet:195.135.220.0/23, country:DE];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=O8ZKN2zJ;
	dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=QuVwGzEY;
	spf=pass (lists.linaro.org: domain of vbabka@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=vbabka@suse.cz;
	dmarc=none
X-MailFrom: vbabka@suse.cz
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4KVP4GIHV5XBFREVZSONIJN6O3BOZYKV
X-Message-ID-Hash: 4KVP4GIHV5XBFREVZSONIJN6O3BOZYKV
X-Mailman-Approved-At: Tue, 25 Oct 2022 05:31:27 +0000
CC: Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, Roman Gushchin <roman.gushchin@linux.dev>, Hyeonggon Yoo <42.hyeyoo@gmail.com>, Marco Elver <elver@google.com>, linux-mm@kvack.org, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Miguel Ojeda <ojeda@kernel.org>, linux-kernel@vger.kernel.org, netdev@vger.ke
 rnel.org, linux-btrfs@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 01/16] slab: Remove __malloc attribute from realloc functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4KVP4GIHV5XBFREVZSONIJN6O3BOZYKV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gOS8yOC8yMiAxOToxMywgS2VlcyBDb29rIHdyb3RlOg0KPiBPbiBXZWQsIFNlcCAyOCwgMjAy
MiBhdCAwOToyNjoxNUFNICswMjAwLCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6DQo+PiBIaSBL
ZWVzLA0KPj4NCj4+IE9uIEZyaSwgU2VwIDIzLCAyMDIyIGF0IDEwOjM1IFBNIEtlZXMgQ29vayA8
a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPiB3cm90ZToNCj4+PiBUaGUgX19tYWxsb2MgYXR0cmlidXRl
IHNob3VsZCBub3QgYmUgYXBwbGllZCB0byAicmVhbGxvYyIgZnVuY3Rpb25zLCBhcw0KPj4+IHRo
ZSByZXR1cm5lZCBwb2ludGVyIG1heSBhbGlhcyB0aGUgc3RvcmFnZSBvZiB0aGUgcHJpb3IgcG9p
bnRlci4gSW5zdGVhZA0KPj4+IG9mIHNwbGl0dGluZyBfX21hbGxvYyBmcm9tIF9fYWxsb2Nfc2l6
ZSwgd2hpY2ggd291bGQgYmUgYSBodWdlIGFtb3VudCBvZg0KPj4+IGNodXJuLCBqdXN0IGNyZWF0
ZSBfX3JlYWxsb2Nfc2l6ZSBmb3IgdGhlIGZldyBjYXNlcyB3aGVyZSBpdCBpcyBuZWVkZWQuDQo+
Pj4NCj4+PiBBZGRpdGlvbmFsbHkgcmVtb3ZlcyB0aGUgY29uZGl0aW9uYWwgdGVzdCBmb3IgX19h
bGxvY19zaXplX18sIHdoaWNoIGlzDQo+Pj4gYWx3YXlzIGRlZmluZWQgbm93Lg0KPj4+DQo+Pj4g
Q2M6IENocmlzdG9waCBMYW1ldGVyIDxjbEBsaW51eC5jb20+DQo+Pj4gQ2M6IFBla2thIEVuYmVy
ZyA8cGVuYmVyZ0BrZXJuZWwub3JnPg0KPj4+IENjOiBEYXZpZCBSaWVudGplcyA8cmllbnRqZXNA
Z29vZ2xlLmNvbT4NCj4+PiBDYzogSm9vbnNvbyBLaW0gPGlhbWpvb25zb28ua2ltQGxnZS5jb20+
DQo+Pj4gQ2M6IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRhdGlvbi5vcmc+DQo+Pj4g
Q2M6IFZsYXN0aW1pbCBCYWJrYSA8dmJhYmthQHN1c2UuY3o+DQo+Pj4gQ2M6IFJvbWFuIEd1c2hj
aGluIDxyb21hbi5ndXNoY2hpbkBsaW51eC5kZXY+DQo+Pj4gQ2M6IEh5ZW9uZ2dvbiBZb28gPDQy
Lmh5ZXlvb0BnbWFpbC5jb20+DQo+Pj4gQ2M6IE1hcmNvIEVsdmVyIDxlbHZlckBnb29nbGUuY29t
Pg0KPj4+IENjOiBsaW51eC1tbUBrdmFjay5vcmcNCj4+PiBTaWduZWQtb2ZmLWJ5OiBLZWVzIENv
b2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4NCj4+DQo+PiBUaGFua3MgZm9yIHlvdXIgcGF0Y2gs
IHdoaWNoIGlzIG5vdyBjb21taXQgNjNjYWEwNGVjNjA1ODNiMSAoInNsYWI6DQo+PiBSZW1vdmUg
X19tYWxsb2MgYXR0cmlidXRlIGZyb20gcmVhbGxvYyBmdW5jdGlvbnMiKSBpbiBuZXh0LTIwMjIw
OTI3Lg0KPj4NCj4+IE5vcmVwbHlAZWxsZXJtYW4uaWQuYXUgcmVwb3J0ZWQgYWxsIGdjYzgtYmFz
ZWQgYnVpbGRzIHRvIGZhaWwNCj4+IChlLmcuIFsxXSwgbW9yZSBhdCBbMl0pOg0KPj4NCj4+ICAg
ICAgSW4gZmlsZSBpbmNsdWRlZCBmcm9tIDxjb21tYW5kLWxpbmU+Og0KPj4gICAgICAuL2luY2x1
ZGUvbGludXgvcGVyY3B1Lmg6IEluIGZ1bmN0aW9uIOKAmF9fYWxsb2NfcmVzZXJ2ZWRfcGVyY3B1
4oCZOg0KPj4gICAgICAuLy4vaW5jbHVkZS9saW51eC9jb21waWxlcl90eXBlcy5oOjI3OTozMDog
ZXJyb3I6IGV4cGVjdGVkDQo+PiBkZWNsYXJhdGlvbiBzcGVjaWZpZXJzIGJlZm9yZSDigJhfX2Fs
bG9jX3NpemVfX+KAmQ0KPj4gICAgICAgI2RlZmluZSBfX2FsbG9jX3NpemUoeCwgLi4uKSBfX2Fs
bG9jX3NpemVfXyh4LCAjIyBfX1ZBX0FSR1NfXykgX19tYWxsb2MNCj4+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn4NCj4+ICAgICAgLi9pbmNsdWRlL2xp
bnV4L3BlcmNwdS5oOjEyMDo3NDogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmF9fYWxs
b2Nfc2l6ZeKAmQ0KPj4gICAgICBbLi4uXQ0KPj4NCj4+IEl0J3MgYnVpbGRpbmcgZmluZSB3aXRo
IGUuZy4gZ2NjLTkgKHdoaWNoIGlzIG15IHVzdWFsIG02OGsgY3Jvc3MtY29tcGlsZXIpLg0KPj4g
UmV2ZXJ0aW5nIHRoaXMgY29tbWl0IG9uIG5leHQtMjAyMjA5MjcgZml4ZXMgdGhlIGlzc3VlLg0K
Pj4NCj4+IFsxXSBodHRwOi8va2lzc2tiLmVsbGVybWFuLmlkLmF1L2tpc3NrYi9idWlsZHJlc3Vs
dC8xNDgwMzkwOC8NCj4+IFsyXSBodHRwOi8va2lzc2tiLmVsbGVybWFuLmlkLmF1L2tpc3NrYi9o
ZWFkLzFiZDhiNzVmZTZhZGVhYTg5ZDAyOTY4YmRkODExZmZlNzA4Y2Y4MzkvDQo+IA0KPiBFZWsh
IFRoYW5rcyBmb3IgbGV0dGluZyBtZSBrbm93LiBJJ20gY29uZnVzZWQgYWJvdXQgdGhpcyAtLQ0K
PiBfX2FsbG9jX3NpemVfXyB3YXNuJ3Qgb3B0aW9uYWwgaW4gY29tcGlsZXJfYXR0cmlidXRlcy5o
IC0tIGJ1dCBvYnZpb3VzbHkNCj4gSSBicm9rZSBzb21ldGhpbmchIEknbGwgZ28gZmlndXJlIHRo
aXMgb3V0Lg0KDQpFdmVuIGluIGxhdGVzdCBuZXh0IEkgY2FuIHNlZSBhdCB0aGUgZW5kIG9mIGlu
Y2x1ZGUvbGludXgvY29tcGlsZXItZ2NjLmgNCg0KLyoNCiAgKiBQcmlvciB0byA5LjEsIC1Xbm8t
YWxsb2Mtc2l6ZS1sYXJnZXItdGhhbiAoYW5kIHRoZXJlZm9yZSB0aGUgImFsbG9jX3NpemUiDQog
ICogYXR0cmlidXRlKSBkbyBub3Qgd29yaywgYW5kIG11c3QgYmUgZGlzYWJsZWQuDQogICovDQoj
aWYgR0NDX1ZFUlNJT04gPCA5MDEwMA0KI3VuZGVmIF9fYWxsb2Nfc2l6ZV9fDQojZW5kaWYNCg0K
DQoNCj4gLUtlZXMNCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
