Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D9060C352
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 07:35:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 044073F467
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 05:35:26 +0000 (UTC)
Received: from gandalf.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	by lists.linaro.org (Postfix) with ESMTPS id 152913EF45
	for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Sep 2022 08:36:18 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4MdRXW0Bs9z4xGG;
	Thu, 29 Sep 2022 18:36:11 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ellerman.id.au;
	s=201909; t=1664440575;
	bh=Zm00l+zmqsCWLK3LqHtfXzxyyxS1KKRiDBtm93jjX9o=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=HvksgIIi1oeSL3sCDaWnCOeWcGonlpaPKJKiI3OtvAu+BHn2yjS8AR76e3Ton4Nmy
	 +EG26HHK0KGq8vBvYX1EeVNsxcIp9mIU6us0cOvxy60zyQiQGRFQuv/txggXaNqN90
	 ZKWhlWHVgkpzhtZMxMhIP2Bw8oAKyLOzGZWe9yuxbUXzVLSr62mIeEvbWCpkSHrZlO
	 Twy98ZJlAAXDut/ui87OToN2gdrJMOcxFt0qGiH5Q17PEp3FYZEI4DXZJQ30tNXk1t
	 9aFxJpinn/zEKI8MPHuL3gndj8LsbUTOOq0tZEPF560BHpeqU2OY2AdZ4ghD6NHw5p
	 pKXBKh32qbh6A==
From: Michael Ellerman <mpe@ellerman.id.au>
To: Kees Cook <keescook@chromium.org>, Geert Uytterhoeven
 <geert@linux-m68k.org>
In-Reply-To: <202209281011.66DD717D@keescook>
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-2-keescook@chromium.org>
 <CAMuHMdXK+UN1YVZm9DenuXAM8hZRUZJwp=SXsueP7sWiVU3a9A@mail.gmail.com>
 <202209281011.66DD717D@keescook>
Date: Thu, 29 Sep 2022 18:36:05 +1000
Message-ID: <874jwqfuh6.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ------
X-Rspamd-Queue-Id: 152913EF45
X-Spamd-Result: default: False [-6.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ellerman.id.au:s=201909];
	R_SPF_ALLOW(-0.20)[+ip4:150.107.74.76];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_TWELVE(0.00)[40];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:133159, ipnet:150.107.72.0/22, country:AU];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[ellerman.id.au:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DMARC_NA(0.00)[ellerman.id.au];
	RCVD_TLS_ALL(0.00)[];
	FREEMAIL_CC(0.00)[suse.cz,linux.com,kernel.org,google.com,lge.com,linux-foundation.org,linux.dev,gmail.com,kvack.org,intel.com,davemloft.net,redhat.com,linuxfoundation.org,toxicpanda.com,suse.com,linaro.org,amd.com,fb.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,openvswitch.org,lists.linux.dev];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ellerman.id.au header.s=201909 header.b=HvksgIIi;
	spf=pass (lists.linaro.org: domain of mpe@ellerman.id.au designates 150.107.74.76 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au;
	dmarc=none
X-MailFrom: mpe@ellerman.id.au
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OW5NLM3XPQ25BRLQ6KRKRMHCLBIXL7X7
X-Message-ID-Hash: OW5NLM3XPQ25BRLQ6KRKRMHCLBIXL7X7
X-Mailman-Approved-At: Tue, 25 Oct 2022 05:32:19 +0000
CC: Vlastimil Babka <vbabka@suse.cz>, Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, Roman Gushchin <roman.gushchin@linux.dev>, Hyeonggon Yoo <42.hyeyoo@gmail.com>, Marco Elver <elver@google.com>, linux-mm@kvack.org, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Miguel Ojeda <ojeda@kernel.org>, linux-kern
 el@vger.kernel.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 01/16] slab: Remove __malloc attribute from realloc functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OW5NLM3XPQ25BRLQ6KRKRMHCLBIXL7X7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

S2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+IHdyaXRlczoNCj4gT24gV2VkLCBTZXAg
MjgsIDIwMjIgYXQgMDk6MjY6MTVBTSArMDIwMCwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOg0K
Pj4gT24gRnJpLCBTZXAgMjMsIDIwMjIgYXQgMTA6MzUgUE0gS2VlcyBDb29rIDxrZWVzY29va0Bj
aHJvbWl1bS5vcmc+IHdyb3RlOg0KPj4gPiBUaGUgX19tYWxsb2MgYXR0cmlidXRlIHNob3VsZCBu
b3QgYmUgYXBwbGllZCB0byAicmVhbGxvYyIgZnVuY3Rpb25zLCBhcw0KPj4gPiB0aGUgcmV0dXJu
ZWQgcG9pbnRlciBtYXkgYWxpYXMgdGhlIHN0b3JhZ2Ugb2YgdGhlIHByaW9yIHBvaW50ZXIuIElu
c3RlYWQNCj4+ID4gb2Ygc3BsaXR0aW5nIF9fbWFsbG9jIGZyb20gX19hbGxvY19zaXplLCB3aGlj
aCB3b3VsZCBiZSBhIGh1Z2UgYW1vdW50IG9mDQo+PiA+IGNodXJuLCBqdXN0IGNyZWF0ZSBfX3Jl
YWxsb2Nfc2l6ZSBmb3IgdGhlIGZldyBjYXNlcyB3aGVyZSBpdCBpcyBuZWVkZWQuDQo+PiA+DQo+
PiA+IEFkZGl0aW9uYWxseSByZW1vdmVzIHRoZSBjb25kaXRpb25hbCB0ZXN0IGZvciBfX2FsbG9j
X3NpemVfXywgd2hpY2ggaXMNCj4+ID4gYWx3YXlzIGRlZmluZWQgbm93Lg0KPj4gPg0KPj4gPiBD
YzogQ2hyaXN0b3BoIExhbWV0ZXIgPGNsQGxpbnV4LmNvbT4NCj4+ID4gQ2M6IFBla2thIEVuYmVy
ZyA8cGVuYmVyZ0BrZXJuZWwub3JnPg0KPj4gPiBDYzogRGF2aWQgUmllbnRqZXMgPHJpZW50amVz
QGdvb2dsZS5jb20+DQo+PiA+IENjOiBKb29uc29vIEtpbSA8aWFtam9vbnNvby5raW1AbGdlLmNv
bT4NCj4+ID4gQ2M6IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRhdGlvbi5vcmc+DQo+
PiA+IENjOiBWbGFzdGltaWwgQmFia2EgPHZiYWJrYUBzdXNlLmN6Pg0KPj4gPiBDYzogUm9tYW4g
R3VzaGNoaW4gPHJvbWFuLmd1c2hjaGluQGxpbnV4LmRldj4NCj4+ID4gQ2M6IEh5ZW9uZ2dvbiBZ
b28gPDQyLmh5ZXlvb0BnbWFpbC5jb20+DQo+PiA+IENjOiBNYXJjbyBFbHZlciA8ZWx2ZXJAZ29v
Z2xlLmNvbT4NCj4+ID4gQ2M6IGxpbnV4LW1tQGt2YWNrLm9yZw0KPj4gPiBTaWduZWQtb2ZmLWJ5
OiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4NCj4+IA0KPj4gVGhhbmtzIGZvciB5
b3VyIHBhdGNoLCB3aGljaCBpcyBub3cgY29tbWl0IDYzY2FhMDRlYzYwNTgzYjEgKCJzbGFiOg0K
Pj4gUmVtb3ZlIF9fbWFsbG9jIGF0dHJpYnV0ZSBmcm9tIHJlYWxsb2MgZnVuY3Rpb25zIikgaW4g
bmV4dC0yMDIyMDkyNy4NCj4+IA0KPj4gTm9yZXBseUBlbGxlcm1hbi5pZC5hdSByZXBvcnRlZCBh
bGwgZ2NjOC1iYXNlZCBidWlsZHMgdG8gZmFpbA0KPj4gKGUuZy4gWzFdLCBtb3JlIGF0IFsyXSk6
DQo+PiANCj4+ICAgICBJbiBmaWxlIGluY2x1ZGVkIGZyb20gPGNvbW1hbmQtbGluZT46DQo+PiAg
ICAgLi9pbmNsdWRlL2xpbnV4L3BlcmNwdS5oOiBJbiBmdW5jdGlvbiDigJhfX2FsbG9jX3Jlc2Vy
dmVkX3BlcmNwdeKAmToNCj4+ICAgICAuLy4vaW5jbHVkZS9saW51eC9jb21waWxlcl90eXBlcy5o
OjI3OTozMDogZXJyb3I6IGV4cGVjdGVkDQo+PiBkZWNsYXJhdGlvbiBzcGVjaWZpZXJzIGJlZm9y
ZSDigJhfX2FsbG9jX3NpemVfX+KAmQ0KPj4gICAgICAjZGVmaW5lIF9fYWxsb2Nfc2l6ZSh4LCAu
Li4pIF9fYWxsb2Nfc2l6ZV9fKHgsICMjIF9fVkFfQVJHU19fKSBfX21hbGxvYw0KPj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+DQo+PiAgICAgLi9pbmNs
dWRlL2xpbnV4L3BlcmNwdS5oOjEyMDo3NDogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKA
mF9fYWxsb2Nfc2l6ZeKAmQ0KPj4gICAgIFsuLi5dDQo+PiANCj4+IEl0J3MgYnVpbGRpbmcgZmlu
ZSB3aXRoIGUuZy4gZ2NjLTkgKHdoaWNoIGlzIG15IHVzdWFsIG02OGsgY3Jvc3MtY29tcGlsZXIp
Lg0KPj4gUmV2ZXJ0aW5nIHRoaXMgY29tbWl0IG9uIG5leHQtMjAyMjA5MjcgZml4ZXMgdGhlIGlz
c3VlLg0KPj4gDQo+PiBbMV0gaHR0cDovL2tpc3NrYi5lbGxlcm1hbi5pZC5hdS9raXNza2IvYnVp
bGRyZXN1bHQvMTQ4MDM5MDgvDQo+PiBbMl0gaHR0cDovL2tpc3NrYi5lbGxlcm1hbi5pZC5hdS9r
aXNza2IvaGVhZC8xYmQ4Yjc1ZmU2YWRlYWE4OWQwMjk2OGJkZDgxMWZmZTcwOGNmODM5Lw0KPg0K
PiBFZWshIFRoYW5rcyBmb3IgbGV0dGluZyBtZSBrbm93LiBJJ20gY29uZnVzZWQgYWJvdXQgdGhp
cyAtLQ0KPiBfX2FsbG9jX3NpemVfXyB3YXNuJ3Qgb3B0aW9uYWwgaW4gY29tcGlsZXJfYXR0cmli
dXRlcy5oIC0tIGJ1dCBvYnZpb3VzbHkNCj4gSSBicm9rZSBzb21ldGhpbmchIEknbGwgZ28gZmln
dXJlIHRoaXMgb3V0Lg0KDQpUaGlzIGZpeGVzIGl0IGZvciBtZS4NCg0KY2hlZXJzDQoNCmRpZmYg
LS1naXQgYS9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyX3R5cGVzLmggYi9pbmNsdWRlL2xpbnV4L2Nv
bXBpbGVyX3R5cGVzLmgNCmluZGV4IGYxNDFhNmY2YjlmNi4uMDcxNzUzNGY4MzY0IDEwMDY0NA0K
LS0tIGEvaW5jbHVkZS9saW51eC9jb21waWxlcl90eXBlcy5oDQorKysgYi9pbmNsdWRlL2xpbnV4
L2NvbXBpbGVyX3R5cGVzLmgNCkBAIC0yNzUsOCArMjc1LDEzIEBAIHN0cnVjdCBmdHJhY2VfbGlr
ZWx5X2RhdGEgew0KICAqIGJlIHBlcmZvcm1pbmcgYSBfcmVhbGxvY2F0aW9uXywgYXMgdGhhdCBt
YXkgYWxpYXMgdGhlIGV4aXN0aW5nIHBvaW50ZXIuDQogICogRm9yIHRoZXNlLCB1c2UgX19yZWFs
bG9jX3NpemUoKS4NCiAgKi8NCi0jZGVmaW5lIF9fYWxsb2Nfc2l6ZSh4LCAuLi4pCV9fYWxsb2Nf
c2l6ZV9fKHgsICMjIF9fVkFfQVJHU19fKSBfX21hbGxvYw0KLSNkZWZpbmUgX19yZWFsbG9jX3Np
emUoeCwgLi4uKQlfX2FsbG9jX3NpemVfXyh4LCAjIyBfX1ZBX0FSR1NfXykNCisjaWZkZWYgX19h
bGxvY19zaXplX18NCisjIGRlZmluZSBfX2FsbG9jX3NpemUoeCwgLi4uKQlfX2FsbG9jX3NpemVf
Xyh4LCAjIyBfX1ZBX0FSR1NfXykgX19tYWxsb2MNCisjIGRlZmluZSBfX3JlYWxsb2Nfc2l6ZSh4
LCAuLi4pCV9fYWxsb2Nfc2l6ZV9fKHgsICMjIF9fVkFfQVJHU19fKQ0KKyNlbHNlDQorIyBkZWZp
bmUgX19hbGxvY19zaXplKHgsIC4uLikJX19tYWxsb2MNCisjIGRlZmluZSBfX3JlYWxsb2Nfc2l6
ZSh4LCAuLi4pDQorI2VuZGlmDQogDQogI2lmbmRlZiBhc21fdm9sYXRpbGVfZ290bw0KICNkZWZp
bmUgYXNtX3ZvbGF0aWxlX2dvdG8oeC4uLikgYXNtIGdvdG8oeCkNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
