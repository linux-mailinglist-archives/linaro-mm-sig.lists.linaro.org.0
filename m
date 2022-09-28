Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D63D60C34F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 07:34:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 825363F491
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 05:34:40 +0000 (UTC)
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
	by lists.linaro.org (Postfix) with ESMTPS id 071863EC18
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Sep 2022 16:29:19 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id C8FAF21BD0;
	Wed, 28 Sep 2022 16:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1664382557; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EnWbGV237BuzDgTB50BqcLBq1d2zN9a/YOcWsHi9fr4=;
	b=t0+ihg6khVdLY0KsOqEColQEDlRylpDqT1w3q1DzA50zxqc/Vqwf/Zi+169ascbHLgt2bW
	FQkeclL4pKkrvckUy0cyXjOjZQxxzwvYNVbzSbw8k0t1HEJSrsQMny3TCh9HQ5Eog+GWZM
	66qq9zmMiQtEpL5PRSk7pG7/X1wkGwI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1664382557;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EnWbGV237BuzDgTB50BqcLBq1d2zN9a/YOcWsHi9fr4=;
	b=EorZdnweBb5NkWdw4eR45K3RqBYZ40BM744J5xENipJYNYfffn6v9+l3CJz/AghB3JfX3n
	6rVrw5Fity5E62Dg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 1213713677;
	Wed, 28 Sep 2022 16:29:17 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id dWVWAF12NGMNKgAAMHmgww
	(envelope-from <vbabka@suse.cz>); Wed, 28 Sep 2022 16:29:17 +0000
Message-ID: <f00866a5-88b2-c705-0a33-8f0b98a0642a@suse.cz>
Date: Wed, 28 Sep 2022 18:27:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>,
 Kees Cook <keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-2-keescook@chromium.org>
 <CAMuHMdXK+UN1YVZm9DenuXAM8hZRUZJwp=SXsueP7sWiVU3a9A@mail.gmail.com>
From: Vlastimil Babka <vbabka@suse.cz>
In-Reply-To: <CAMuHMdXK+UN1YVZm9DenuXAM8hZRUZJwp=SXsueP7sWiVU3a9A@mail.gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ------
X-Rspamd-Queue-Id: 071863EC18
X-Spamd-Result: default: False [-6.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.220.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[39];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	DKIM_TRACE(0.00)[suse.cz:+];
	ASN(0.00)[asn:29298, ipnet:195.135.220.0/23, country:DE];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[suse.cz];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_CC(0.00)[linux.com,kernel.org,google.com,lge.com,linux-foundation.org,linux.dev,gmail.com,kvack.org,intel.com,davemloft.net,redhat.com,linuxfoundation.org,toxicpanda.com,suse.com,linaro.org,amd.com,fb.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,openvswitch.org,lists.linux.dev];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[linux.dev:email,lge.com:email,linux.com:email];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=t0+ihg6k;
	dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=EorZdnwe;
	spf=pass (lists.linaro.org: domain of vbabka@suse.cz designates 195.135.220.28 as permitted sender) smtp.mailfrom=vbabka@suse.cz;
	dmarc=none
X-MailFrom: vbabka@suse.cz
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7BYBL64IN4Y2Z6IZH3S6HCZ3XDD53ZSQ
X-Message-ID-Hash: 7BYBL64IN4Y2Z6IZH3S6HCZ3XDD53ZSQ
X-Mailman-Approved-At: Tue, 25 Oct 2022 05:31:27 +0000
CC: Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, Roman Gushchin <roman.gushchin@linux.dev>, Hyeonggon Yoo <42.hyeyoo@gmail.com>, Marco Elver <elver@google.com>, linux-mm@kvack.org, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Miguel Ojeda <ojeda@kernel.org>, linux-kernel@vger.kernel.org, netdev@vger.ke
 rnel.org, linux-btrfs@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 01/16] slab: Remove __malloc attribute from realloc functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7BYBL64IN4Y2Z6IZH3S6HCZ3XDD53ZSQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gOS8yOC8yMiAwOToyNiwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOg0KPiBIaSBLZWVzLA0K
PiANCj4gT24gRnJpLCBTZXAgMjMsIDIwMjIgYXQgMTA6MzUgUE0gS2VlcyBDb29rIDxrZWVzY29v
a0BjaHJvbWl1bS5vcmc+IHdyb3RlOg0KPj4gVGhlIF9fbWFsbG9jIGF0dHJpYnV0ZSBzaG91bGQg
bm90IGJlIGFwcGxpZWQgdG8gInJlYWxsb2MiIGZ1bmN0aW9ucywgYXMNCj4+IHRoZSByZXR1cm5l
ZCBwb2ludGVyIG1heSBhbGlhcyB0aGUgc3RvcmFnZSBvZiB0aGUgcHJpb3IgcG9pbnRlci4gSW5z
dGVhZA0KPj4gb2Ygc3BsaXR0aW5nIF9fbWFsbG9jIGZyb20gX19hbGxvY19zaXplLCB3aGljaCB3
b3VsZCBiZSBhIGh1Z2UgYW1vdW50IG9mDQo+PiBjaHVybiwganVzdCBjcmVhdGUgX19yZWFsbG9j
X3NpemUgZm9yIHRoZSBmZXcgY2FzZXMgd2hlcmUgaXQgaXMgbmVlZGVkLg0KPj4NCj4+IEFkZGl0
aW9uYWxseSByZW1vdmVzIHRoZSBjb25kaXRpb25hbCB0ZXN0IGZvciBfX2FsbG9jX3NpemVfXywg
d2hpY2ggaXMNCj4+IGFsd2F5cyBkZWZpbmVkIG5vdy4NCj4+DQo+PiBDYzogQ2hyaXN0b3BoIExh
bWV0ZXIgPGNsQGxpbnV4LmNvbT4NCj4+IENjOiBQZWtrYSBFbmJlcmcgPHBlbmJlcmdAa2VybmVs
Lm9yZz4NCj4+IENjOiBEYXZpZCBSaWVudGplcyA8cmllbnRqZXNAZ29vZ2xlLmNvbT4NCj4+IENj
OiBKb29uc29vIEtpbSA8aWFtam9vbnNvby5raW1AbGdlLmNvbT4NCj4+IENjOiBBbmRyZXcgTW9y
dG9uIDxha3BtQGxpbnV4LWZvdW5kYXRpb24ub3JnPg0KPj4gQ2M6IFZsYXN0aW1pbCBCYWJrYSA8
dmJhYmthQHN1c2UuY3o+DQo+PiBDYzogUm9tYW4gR3VzaGNoaW4gPHJvbWFuLmd1c2hjaGluQGxp
bnV4LmRldj4NCj4+IENjOiBIeWVvbmdnb24gWW9vIDw0Mi5oeWV5b29AZ21haWwuY29tPg0KPj4g
Q2M6IE1hcmNvIEVsdmVyIDxlbHZlckBnb29nbGUuY29tPg0KPj4gQ2M6IGxpbnV4LW1tQGt2YWNr
Lm9yZw0KPj4gU2lnbmVkLW9mZi1ieTogS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+
DQo+IA0KPiBUaGFua3MgZm9yIHlvdXIgcGF0Y2gsIHdoaWNoIGlzIG5vdyBjb21taXQgNjNjYWEw
NGVjNjA1ODNiMSAoInNsYWI6DQo+IFJlbW92ZSBfX21hbGxvYyBhdHRyaWJ1dGUgZnJvbSByZWFs
bG9jIGZ1bmN0aW9ucyIpIGluIG5leHQtMjAyMjA5MjcuDQo+IA0KPiBOb3JlcGx5QGVsbGVybWFu
LmlkLmF1IHJlcG9ydGVkIGFsbCBnY2M4LWJhc2VkIGJ1aWxkcyB0byBmYWlsDQo+IChlLmcuIFsx
XSwgbW9yZSBhdCBbMl0pOg0KPiANCj4gICAgICBJbiBmaWxlIGluY2x1ZGVkIGZyb20gPGNvbW1h
bmQtbGluZT46DQo+ICAgICAgLi9pbmNsdWRlL2xpbnV4L3BlcmNwdS5oOiBJbiBmdW5jdGlvbiDi
gJhfX2FsbG9jX3Jlc2VydmVkX3BlcmNwdeKAmToNCj4gICAgICAuLy4vaW5jbHVkZS9saW51eC9j
b21waWxlcl90eXBlcy5oOjI3OTozMDogZXJyb3I6IGV4cGVjdGVkDQo+IGRlY2xhcmF0aW9uIHNw
ZWNpZmllcnMgYmVmb3JlIOKAmF9fYWxsb2Nfc2l6ZV9f4oCZDQo+ICAgICAgICNkZWZpbmUgX19h
bGxvY19zaXplKHgsIC4uLikgX19hbGxvY19zaXplX18oeCwgIyMgX19WQV9BUkdTX18pIF9fbWFs
bG9jDQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn4N
Cj4gICAgICAuL2luY2x1ZGUvbGludXgvcGVyY3B1Lmg6MTIwOjc0OiBub3RlOiBpbiBleHBhbnNp
b24gb2YgbWFjcm8g4oCYX19hbGxvY19zaXpl4oCZDQo+ICAgICAgWy4uLl0NCj4gDQo+IEl0J3Mg
YnVpbGRpbmcgZmluZSB3aXRoIGUuZy4gZ2NjLTkgKHdoaWNoIGlzIG15IHVzdWFsIG02OGsgY3Jv
c3MtY29tcGlsZXIpLg0KPiBSZXZlcnRpbmcgdGhpcyBjb21taXQgb24gbmV4dC0yMDIyMDkyNyBm
aXhlcyB0aGUgaXNzdWUuDQoNClNvIElJVUMgaXQgd2FzIHdyb25nIHRvIHJlbW92ZSB0aGUgI2lm
ZGVmcz8NCg0KPiBbMV0gaHR0cDovL2tpc3NrYi5lbGxlcm1hbi5pZC5hdS9raXNza2IvYnVpbGRy
ZXN1bHQvMTQ4MDM5MDgvDQo+IFsyXSBodHRwOi8va2lzc2tiLmVsbGVybWFuLmlkLmF1L2tpc3Nr
Yi9oZWFkLzFiZDhiNzVmZTZhZGVhYTg5ZDAyOTY4YmRkODExZmZlNzA4Y2Y4MzkvDQo+IA0KPiAN
Cj4gDQo+PiAtLS0NCj4+ICAgaW5jbHVkZS9saW51eC9jb21waWxlcl90eXBlcy5oIHwgMTMgKysr
KystLS0tLS0tLQ0KPj4gICBpbmNsdWRlL2xpbnV4L3NsYWIuaCAgICAgICAgICAgfCAxMiArKysr
KystLS0tLS0NCj4+ICAgbW0vc2xhYl9jb21tb24uYyAgICAgICAgICAgICAgIHwgIDQgKystLQ0K
Pj4gICAzIGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQ0K
Pj4NCj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyX3R5cGVzLmggYi9pbmNs
dWRlL2xpbnV4L2NvbXBpbGVyX3R5cGVzLmgNCj4+IGluZGV4IDRmMmE4MTlmZDYwYS4uZjE0MWE2
ZjZiOWY2IDEwMDY0NA0KPj4gLS0tIGEvaW5jbHVkZS9saW51eC9jb21waWxlcl90eXBlcy5oDQo+
PiArKysgYi9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyX3R5cGVzLmgNCj4+IEBAIC0yNzEsMTUgKzI3
MSwxMiBAQCBzdHJ1Y3QgZnRyYWNlX2xpa2VseV9kYXRhIHsNCj4+DQo+PiAgIC8qDQo+PiAgICAq
IEFueSBwbGFjZSB0aGF0IGNvdWxkIGJlIG1hcmtlZCB3aXRoIHRoZSAiYWxsb2Nfc2l6ZSIgYXR0
cmlidXRlIGlzIGFsc28NCj4+IC0gKiBhIHBsYWNlIHRvIGJlIG1hcmtlZCB3aXRoIHRoZSAibWFs
bG9jIiBhdHRyaWJ1dGUuIERvIHRoaXMgYXMgcGFydCBvZiB0aGUNCj4+IC0gKiBfX2FsbG9jX3Np
emUgbWFjcm8gdG8gYXZvaWQgcmVkdW5kYW50IGF0dHJpYnV0ZXMgYW5kIHRvIGF2b2lkIG1pc3Np
bmcgYQ0KPj4gLSAqIF9fbWFsbG9jIG1hcmtpbmcuDQo+PiArICogYSBwbGFjZSB0byBiZSBtYXJr
ZWQgd2l0aCB0aGUgIm1hbGxvYyIgYXR0cmlidXRlLCBleGNlcHQgdGhvc2UgdGhhdCBtYXkNCj4+
ICsgKiBiZSBwZXJmb3JtaW5nIGEgX3JlYWxsb2NhdGlvbl8sIGFzIHRoYXQgbWF5IGFsaWFzIHRo
ZSBleGlzdGluZyBwb2ludGVyLg0KPj4gKyAqIEZvciB0aGVzZSwgdXNlIF9fcmVhbGxvY19zaXpl
KCkuDQo+PiAgICAqLw0KPj4gLSNpZmRlZiBfX2FsbG9jX3NpemVfXw0KPj4gLSMgZGVmaW5lIF9f
YWxsb2Nfc2l6ZSh4LCAuLi4pICBfX2FsbG9jX3NpemVfXyh4LCAjIyBfX1ZBX0FSR1NfXykgX19t
YWxsb2MNCj4+IC0jZWxzZQ0KPj4gLSMgZGVmaW5lIF9fYWxsb2Nfc2l6ZSh4LCAuLi4pICBfX21h
bGxvYw0KPj4gLSNlbmRpZg0KPj4gKyNkZWZpbmUgX19hbGxvY19zaXplKHgsIC4uLikgICBfX2Fs
bG9jX3NpemVfXyh4LCAjIyBfX1ZBX0FSR1NfXykgX19tYWxsb2MNCj4+ICsjZGVmaW5lIF9fcmVh
bGxvY19zaXplKHgsIC4uLikgX19hbGxvY19zaXplX18oeCwgIyMgX19WQV9BUkdTX18pDQo+Pg0K
Pj4gICAjaWZuZGVmIGFzbV92b2xhdGlsZV9nb3RvDQo+PiAgICNkZWZpbmUgYXNtX3ZvbGF0aWxl
X2dvdG8oeC4uLikgYXNtIGdvdG8oeCkNCj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3Ns
YWIuaCBiL2luY2x1ZGUvbGludXgvc2xhYi5oDQo+PiBpbmRleCAwZmVmZGY1MjhlMGQuLjQxYmQw
MzZlNzU1MSAxMDA2NDQNCj4+IC0tLSBhL2luY2x1ZGUvbGludXgvc2xhYi5oDQo+PiArKysgYi9p
bmNsdWRlL2xpbnV4L3NsYWIuaA0KPj4gQEAgLTE4NCw3ICsxODQsNyBAQCBpbnQga21lbV9jYWNo
ZV9zaHJpbmsoc3RydWN0IGttZW1fY2FjaGUgKnMpOw0KPj4gICAvKg0KPj4gICAgKiBDb21tb24g
a21hbGxvYyBmdW5jdGlvbnMgcHJvdmlkZWQgYnkgYWxsIGFsbG9jYXRvcnMNCj4+ICAgICovDQo+
PiAtdm9pZCAqIF9fbXVzdF9jaGVjayBrcmVhbGxvYyhjb25zdCB2b2lkICpvYmpwLCBzaXplX3Qg
bmV3X3NpemUsIGdmcF90IGZsYWdzKSBfX2FsbG9jX3NpemUoMik7DQo+PiArdm9pZCAqIF9fbXVz
dF9jaGVjayBrcmVhbGxvYyhjb25zdCB2b2lkICpvYmpwLCBzaXplX3QgbmV3X3NpemUsIGdmcF90
IGZsYWdzKSBfX3JlYWxsb2Nfc2l6ZSgyKTsNCj4+ICAgdm9pZCBrZnJlZShjb25zdCB2b2lkICpv
YmpwKTsNCj4+ICAgdm9pZCBrZnJlZV9zZW5zaXRpdmUoY29uc3Qgdm9pZCAqb2JqcCk7DQo+PiAg
IHNpemVfdCBfX2tzaXplKGNvbnN0IHZvaWQgKm9ianApOw0KPj4gQEAgLTY0NywxMCArNjQ3LDEw
IEBAIHN0YXRpYyBpbmxpbmUgX19hbGxvY19zaXplKDEsIDIpIHZvaWQgKmttYWxsb2NfYXJyYXko
c2l6ZV90IG4sIHNpemVfdCBzaXplLCBnZnBfDQo+PiAgICAqIEBuZXdfc2l6ZTogbmV3IHNpemUg
b2YgYSBzaW5nbGUgbWVtYmVyIG9mIHRoZSBhcnJheQ0KPj4gICAgKiBAZmxhZ3M6IHRoZSB0eXBl
IG9mIG1lbW9yeSB0byBhbGxvY2F0ZSAoc2VlIGttYWxsb2MpDQo+PiAgICAqLw0KPj4gLXN0YXRp
YyBpbmxpbmUgX19hbGxvY19zaXplKDIsIDMpIHZvaWQgKiBfX211c3RfY2hlY2sga3JlYWxsb2Nf
YXJyYXkodm9pZCAqcCwNCj4+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2l6ZV90IG5ld19uLA0KPj4gLSAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBzaXplX3QgbmV3X3NpemUsDQo+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGdmcF90IGZsYWdzKQ0KPj4gK3N0YXRp
YyBpbmxpbmUgX19yZWFsbG9jX3NpemUoMiwgMykgdm9pZCAqIF9fbXVzdF9jaGVjayBrcmVhbGxv
Y19hcnJheSh2b2lkICpwLA0KPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNpemVfdCBuZXdfbiwNCj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBzaXplX3QgbmV3X3NpemUsDQo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZ2ZwX3QgZmxhZ3MpDQo+
PiAgIHsNCj4+ICAgICAgICAgIHNpemVfdCBieXRlczsNCj4+DQo+PiBAQCAtNzc0LDcgKzc3NCw3
IEBAIHN0YXRpYyBpbmxpbmUgX19hbGxvY19zaXplKDEsIDIpIHZvaWQgKmt2Y2FsbG9jKHNpemVf
dCBuLCBzaXplX3Qgc2l6ZSwgZ2ZwX3QgZmxhDQo+PiAgIH0NCj4+DQo+PiAgIGV4dGVybiB2b2lk
ICprdnJlYWxsb2MoY29uc3Qgdm9pZCAqcCwgc2l6ZV90IG9sZHNpemUsIHNpemVfdCBuZXdzaXpl
LCBnZnBfdCBmbGFncykNCj4+IC0gICAgICAgICAgICAgICAgICAgICBfX2FsbG9jX3NpemUoMyk7
DQo+PiArICAgICAgICAgICAgICAgICAgICAgX19yZWFsbG9jX3NpemUoMyk7DQo+PiAgIGV4dGVy
biB2b2lkIGt2ZnJlZShjb25zdCB2b2lkICphZGRyKTsNCj4+ICAgZXh0ZXJuIHZvaWQga3ZmcmVl
X3NlbnNpdGl2ZShjb25zdCB2b2lkICphZGRyLCBzaXplX3QgbGVuKTsNCj4+DQo+PiBkaWZmIC0t
Z2l0IGEvbW0vc2xhYl9jb21tb24uYyBiL21tL3NsYWJfY29tbW9uLmMNCj4+IGluZGV4IDE3OTk2
NjQ5Y2ZlMy4uNDU3NjcxYWNlN2ViIDEwMDY0NA0KPj4gLS0tIGEvbW0vc2xhYl9jb21tb24uYw0K
Pj4gKysrIGIvbW0vc2xhYl9jb21tb24uYw0KPj4gQEAgLTExMzQsOCArMTEzNCw4IEBAIG1vZHVs
ZV9pbml0KHNsYWJfcHJvY19pbml0KTsNCj4+DQo+PiAgICNlbmRpZiAvKiBDT05GSUdfU0xBQiB8
fCBDT05GSUdfU0xVQl9ERUJVRyAqLw0KPj4NCj4+IC1zdGF0aWMgX19hbHdheXNfaW5saW5lIHZv
aWQgKl9fZG9fa3JlYWxsb2MoY29uc3Qgdm9pZCAqcCwgc2l6ZV90IG5ld19zaXplLA0KPj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGdmcF90IGZsYWdzKQ0KPj4g
K3N0YXRpYyBfX2Fsd2F5c19pbmxpbmUgX19yZWFsbG9jX3NpemUoMikgdm9pZCAqDQo+PiArX19k
b19rcmVhbGxvYyhjb25zdCB2b2lkICpwLCBzaXplX3QgbmV3X3NpemUsIGdmcF90IGZsYWdzKQ0K
Pj4gICB7DQo+PiAgICAgICAgICB2b2lkICpyZXQ7DQo+PiAgICAgICAgICBzaXplX3Qga3M7DQo+
PiAtLQ0KPj4gMi4zNC4xDQo+Pg0KPiANCj4gDQo+IC0tDQo+IEdye29ldGplLGVldGluZ31zLA0K
PiANCj4gICAgICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0DQo+IA0KPiAtLQ0KPiBHZWVydCBV
eXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0
QGxpbnV4LW02OGsub3JnDQo+IA0KPiBJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVj
aG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0DQo+IHdoZW4gSSdtIHRh
bGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5n
IGxpa2UgdGhhdC4NCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMg
VG9ydmFsZHMNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
