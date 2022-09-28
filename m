Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BEB5ED605
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 09:27:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D672E3F55F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Sep 2022 07:26:59 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by lists.linaro.org (Postfix) with ESMTPS id CF1823EE45
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Sep 2022 07:26:38 +0000 (UTC)
Received: by mail-qk1-f170.google.com with SMTP id d17so7368241qko.13
        for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Sep 2022 00:26:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=qLaRR+atoHoSJaoPeYCH+z3TJyk6r6Xbl1EdBW345pA=;
        b=nIQBdEvMoC99mARVRcVDVY3YIHZNm52JELUVKioUtkZ9iyRqr7ujwoPgKMAo7cT2Rl
         lfR+3nQ06BNZkKhDz+LpyLh8kFwTrjsxltapzuQDyRPoqe4aqrPCPLKr18mTfyu6axJd
         NJJn+ZyO4TW5rqLiIvvqweKG/Vrw6U92Ogc1c6x4BJA5ZtM2FI3XxzX0XB1nLvMaqtxv
         1x0IBk8S7yALAvCLFa8BWcHGbhH/yDtU7og1UT6YbNMDvcWkcEFSoScJxIpRw/MBMTjb
         Mx5VWc6zatI3rs4fqQlKxh1doZ7BW+NrcCUoixirb/Rd8tMOiDtHQKostl+niRm3jMuH
         XIqg==
X-Gm-Message-State: ACrzQf0GQ/VweXxBCYBpyvv+Qmap1ai41rzfY9UAsU1Kd5PeAQ5dh/E+
	avyQl4dBerSOQammhpu3zWXPvd00XxhCzg==
X-Google-Smtp-Source: AMsMyM5Q61dpMRTUfqw+eWKsqUIBNzDPOLW1RywNb4DUEjudaTuvTdWRWlUbXbK8i38o/Sk+3p60yw==
X-Received: by 2002:a05:620a:2794:b0:6cf:9c3b:d1f2 with SMTP id g20-20020a05620a279400b006cf9c3bd1f2mr9766608qkp.364.1664349998282;
        Wed, 28 Sep 2022 00:26:38 -0700 (PDT)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com. [209.85.128.175])
        by smtp.gmail.com with ESMTPSA id c15-20020ac853cf000000b0035ba366cc90sm2319852qtq.15.2022.09.28.00.26.37
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 00:26:38 -0700 (PDT)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-349c4310cf7so122272037b3.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Sep 2022 00:26:37 -0700 (PDT)
X-Received: by 2002:a81:758a:0:b0:345:450b:6668 with SMTP id
 q132-20020a81758a000000b00345450b6668mr28433710ywc.316.1664349987412; Wed, 28
 Sep 2022 00:26:27 -0700 (PDT)
MIME-Version: 1.0
References: <20220923202822.2667581-1-keescook@chromium.org> <20220923202822.2667581-2-keescook@chromium.org>
In-Reply-To: <20220923202822.2667581-2-keescook@chromium.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 28 Sep 2022 09:26:15 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXK+UN1YVZm9DenuXAM8hZRUZJwp=SXsueP7sWiVU3a9A@mail.gmail.com>
Message-ID: <CAMuHMdXK+UN1YVZm9DenuXAM8hZRUZJwp=SXsueP7sWiVU3a9A@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: CF1823EE45
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[geert@linux-m68k.org,geertuytterhoeven@gmail.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[linux.com:email,chromium.org:email];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DMARC_NA(0.00)[linux-m68k.org];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.170:from];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[39];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,geertuytterhoeven@gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[suse.cz,linux.com,kernel.org,google.com,lge.com,linux-foundation.org,linux.dev,gmail.com,kvack.org,intel.com,davemloft.net,redhat.com,linuxfoundation.org,toxicpanda.com,suse.com,linaro.org,amd.com,fb.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,openvswitch.org,lists.linux.dev];
	R_DKIM_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of geert.uytterhoeven@gmail.com designates 209.85.222.170 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com;
	dmarc=none
Message-ID-Hash: 6SETUIPZAY3XMXEE5KUZSN22MWGYSO6F
X-Message-ID-Hash: 6SETUIPZAY3XMXEE5KUZSN22MWGYSO6F
X-MailFrom: geert.uytterhoeven@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Vlastimil Babka <vbabka@suse.cz>, Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, Roman Gushchin <roman.gushchin@linux.dev>, Hyeonggon Yoo <42.hyeyoo@gmail.com>, Marco Elver <elver@google.com>, linux-mm@kvack.org, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Miguel Ojeda <ojeda@kernel.org>, linux-kern
 el@vger.kernel.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 01/16] slab: Remove __malloc attribute from realloc functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6SETUIPZAY3XMXEE5KUZSN22MWGYSO6F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgS2VlcywNCg0KT24gRnJpLCBTZXAgMjMsIDIwMjIgYXQgMTA6MzUgUE0gS2VlcyBDb29rIDxr
ZWVzY29va0BjaHJvbWl1bS5vcmc+IHdyb3RlOg0KPiBUaGUgX19tYWxsb2MgYXR0cmlidXRlIHNo
b3VsZCBub3QgYmUgYXBwbGllZCB0byAicmVhbGxvYyIgZnVuY3Rpb25zLCBhcw0KPiB0aGUgcmV0
dXJuZWQgcG9pbnRlciBtYXkgYWxpYXMgdGhlIHN0b3JhZ2Ugb2YgdGhlIHByaW9yIHBvaW50ZXIu
IEluc3RlYWQNCj4gb2Ygc3BsaXR0aW5nIF9fbWFsbG9jIGZyb20gX19hbGxvY19zaXplLCB3aGlj
aCB3b3VsZCBiZSBhIGh1Z2UgYW1vdW50IG9mDQo+IGNodXJuLCBqdXN0IGNyZWF0ZSBfX3JlYWxs
b2Nfc2l6ZSBmb3IgdGhlIGZldyBjYXNlcyB3aGVyZSBpdCBpcyBuZWVkZWQuDQo+DQo+IEFkZGl0
aW9uYWxseSByZW1vdmVzIHRoZSBjb25kaXRpb25hbCB0ZXN0IGZvciBfX2FsbG9jX3NpemVfXywg
d2hpY2ggaXMNCj4gYWx3YXlzIGRlZmluZWQgbm93Lg0KPg0KPiBDYzogQ2hyaXN0b3BoIExhbWV0
ZXIgPGNsQGxpbnV4LmNvbT4NCj4gQ2M6IFBla2thIEVuYmVyZyA8cGVuYmVyZ0BrZXJuZWwub3Jn
Pg0KPiBDYzogRGF2aWQgUmllbnRqZXMgPHJpZW50amVzQGdvb2dsZS5jb20+DQo+IENjOiBKb29u
c29vIEtpbSA8aWFtam9vbnNvby5raW1AbGdlLmNvbT4NCj4gQ2M6IEFuZHJldyBNb3J0b24gPGFr
cG1AbGludXgtZm91bmRhdGlvbi5vcmc+DQo+IENjOiBWbGFzdGltaWwgQmFia2EgPHZiYWJrYUBz
dXNlLmN6Pg0KPiBDYzogUm9tYW4gR3VzaGNoaW4gPHJvbWFuLmd1c2hjaGluQGxpbnV4LmRldj4N
Cj4gQ2M6IEh5ZW9uZ2dvbiBZb28gPDQyLmh5ZXlvb0BnbWFpbC5jb20+DQo+IENjOiBNYXJjbyBF
bHZlciA8ZWx2ZXJAZ29vZ2xlLmNvbT4NCj4gQ2M6IGxpbnV4LW1tQGt2YWNrLm9yZw0KPiBTaWdu
ZWQtb2ZmLWJ5OiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4NCg0KVGhhbmtzIGZv
ciB5b3VyIHBhdGNoLCB3aGljaCBpcyBub3cgY29tbWl0IDYzY2FhMDRlYzYwNTgzYjEgKCJzbGFi
Og0KUmVtb3ZlIF9fbWFsbG9jIGF0dHJpYnV0ZSBmcm9tIHJlYWxsb2MgZnVuY3Rpb25zIikgaW4g
bmV4dC0yMDIyMDkyNy4NCg0KTm9yZXBseUBlbGxlcm1hbi5pZC5hdSByZXBvcnRlZCBhbGwgZ2Nj
OC1iYXNlZCBidWlsZHMgdG8gZmFpbA0KKGUuZy4gWzFdLCBtb3JlIGF0IFsyXSk6DQoNCiAgICBJ
biBmaWxlIGluY2x1ZGVkIGZyb20gPGNvbW1hbmQtbGluZT46DQogICAgLi9pbmNsdWRlL2xpbnV4
L3BlcmNwdS5oOiBJbiBmdW5jdGlvbiDigJhfX2FsbG9jX3Jlc2VydmVkX3BlcmNwdeKAmToNCiAg
ICAuLy4vaW5jbHVkZS9saW51eC9jb21waWxlcl90eXBlcy5oOjI3OTozMDogZXJyb3I6IGV4cGVj
dGVkDQpkZWNsYXJhdGlvbiBzcGVjaWZpZXJzIGJlZm9yZSDigJhfX2FsbG9jX3NpemVfX+KAmQ0K
ICAgICAjZGVmaW5lIF9fYWxsb2Nfc2l6ZSh4LCAuLi4pIF9fYWxsb2Nfc2l6ZV9fKHgsICMjIF9f
VkFfQVJHU19fKSBfX21hbGxvYw0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+
fn5+fn5+fn5+fn5+DQogICAgLi9pbmNsdWRlL2xpbnV4L3BlcmNwdS5oOjEyMDo3NDogbm90ZTog
aW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmF9fYWxsb2Nfc2l6ZeKAmQ0KICAgIFsuLi5dDQoNCkl0
J3MgYnVpbGRpbmcgZmluZSB3aXRoIGUuZy4gZ2NjLTkgKHdoaWNoIGlzIG15IHVzdWFsIG02OGsg
Y3Jvc3MtY29tcGlsZXIpLg0KUmV2ZXJ0aW5nIHRoaXMgY29tbWl0IG9uIG5leHQtMjAyMjA5Mjcg
Zml4ZXMgdGhlIGlzc3VlLg0KDQpbMV0gaHR0cDovL2tpc3NrYi5lbGxlcm1hbi5pZC5hdS9raXNz
a2IvYnVpbGRyZXN1bHQvMTQ4MDM5MDgvDQpbMl0gaHR0cDovL2tpc3NrYi5lbGxlcm1hbi5pZC5h
dS9raXNza2IvaGVhZC8xYmQ4Yjc1ZmU2YWRlYWE4OWQwMjk2OGJkZDgxMWZmZTcwOGNmODM5Lw0K
DQoNCg0KPiAtLS0NCj4gIGluY2x1ZGUvbGludXgvY29tcGlsZXJfdHlwZXMuaCB8IDEzICsrKysr
LS0tLS0tLS0NCj4gIGluY2x1ZGUvbGludXgvc2xhYi5oICAgICAgICAgICB8IDEyICsrKysrKy0t
LS0tLQ0KPiAgbW0vc2xhYl9jb21tb24uYyAgICAgICAgICAgICAgIHwgIDQgKystLQ0KPiAgMyBm
aWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkNCj4NCj4gZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvY29tcGlsZXJfdHlwZXMuaCBiL2luY2x1ZGUvbGludXgv
Y29tcGlsZXJfdHlwZXMuaA0KPiBpbmRleCA0ZjJhODE5ZmQ2MGEuLmYxNDFhNmY2YjlmNiAxMDA2
NDQNCj4gLS0tIGEvaW5jbHVkZS9saW51eC9jb21waWxlcl90eXBlcy5oDQo+ICsrKyBiL2luY2x1
ZGUvbGludXgvY29tcGlsZXJfdHlwZXMuaA0KPiBAQCAtMjcxLDE1ICsyNzEsMTIgQEAgc3RydWN0
IGZ0cmFjZV9saWtlbHlfZGF0YSB7DQo+DQo+ICAvKg0KPiAgICogQW55IHBsYWNlIHRoYXQgY291
bGQgYmUgbWFya2VkIHdpdGggdGhlICJhbGxvY19zaXplIiBhdHRyaWJ1dGUgaXMgYWxzbw0KPiAt
ICogYSBwbGFjZSB0byBiZSBtYXJrZWQgd2l0aCB0aGUgIm1hbGxvYyIgYXR0cmlidXRlLiBEbyB0
aGlzIGFzIHBhcnQgb2YgdGhlDQo+IC0gKiBfX2FsbG9jX3NpemUgbWFjcm8gdG8gYXZvaWQgcmVk
dW5kYW50IGF0dHJpYnV0ZXMgYW5kIHRvIGF2b2lkIG1pc3NpbmcgYQ0KPiAtICogX19tYWxsb2Mg
bWFya2luZy4NCj4gKyAqIGEgcGxhY2UgdG8gYmUgbWFya2VkIHdpdGggdGhlICJtYWxsb2MiIGF0
dHJpYnV0ZSwgZXhjZXB0IHRob3NlIHRoYXQgbWF5DQo+ICsgKiBiZSBwZXJmb3JtaW5nIGEgX3Jl
YWxsb2NhdGlvbl8sIGFzIHRoYXQgbWF5IGFsaWFzIHRoZSBleGlzdGluZyBwb2ludGVyLg0KPiAr
ICogRm9yIHRoZXNlLCB1c2UgX19yZWFsbG9jX3NpemUoKS4NCj4gICAqLw0KPiAtI2lmZGVmIF9f
YWxsb2Nfc2l6ZV9fDQo+IC0jIGRlZmluZSBfX2FsbG9jX3NpemUoeCwgLi4uKSAgX19hbGxvY19z
aXplX18oeCwgIyMgX19WQV9BUkdTX18pIF9fbWFsbG9jDQo+IC0jZWxzZQ0KPiAtIyBkZWZpbmUg
X19hbGxvY19zaXplKHgsIC4uLikgIF9fbWFsbG9jDQo+IC0jZW5kaWYNCj4gKyNkZWZpbmUgX19h
bGxvY19zaXplKHgsIC4uLikgICBfX2FsbG9jX3NpemVfXyh4LCAjIyBfX1ZBX0FSR1NfXykgX19t
YWxsb2MNCj4gKyNkZWZpbmUgX19yZWFsbG9jX3NpemUoeCwgLi4uKSBfX2FsbG9jX3NpemVfXyh4
LCAjIyBfX1ZBX0FSR1NfXykNCj4NCj4gICNpZm5kZWYgYXNtX3ZvbGF0aWxlX2dvdG8NCj4gICNk
ZWZpbmUgYXNtX3ZvbGF0aWxlX2dvdG8oeC4uLikgYXNtIGdvdG8oeCkNCj4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvbGludXgvc2xhYi5oIGIvaW5jbHVkZS9saW51eC9zbGFiLmgNCj4gaW5kZXggMGZl
ZmRmNTI4ZTBkLi40MWJkMDM2ZTc1NTEgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvbGludXgvc2xh
Yi5oDQo+ICsrKyBiL2luY2x1ZGUvbGludXgvc2xhYi5oDQo+IEBAIC0xODQsNyArMTg0LDcgQEAg
aW50IGttZW1fY2FjaGVfc2hyaW5rKHN0cnVjdCBrbWVtX2NhY2hlICpzKTsNCj4gIC8qDQo+ICAg
KiBDb21tb24ga21hbGxvYyBmdW5jdGlvbnMgcHJvdmlkZWQgYnkgYWxsIGFsbG9jYXRvcnMNCj4g
ICAqLw0KPiAtdm9pZCAqIF9fbXVzdF9jaGVjayBrcmVhbGxvYyhjb25zdCB2b2lkICpvYmpwLCBz
aXplX3QgbmV3X3NpemUsIGdmcF90IGZsYWdzKSBfX2FsbG9jX3NpemUoMik7DQo+ICt2b2lkICog
X19tdXN0X2NoZWNrIGtyZWFsbG9jKGNvbnN0IHZvaWQgKm9ianAsIHNpemVfdCBuZXdfc2l6ZSwg
Z2ZwX3QgZmxhZ3MpIF9fcmVhbGxvY19zaXplKDIpOw0KPiAgdm9pZCBrZnJlZShjb25zdCB2b2lk
ICpvYmpwKTsNCj4gIHZvaWQga2ZyZWVfc2Vuc2l0aXZlKGNvbnN0IHZvaWQgKm9ianApOw0KPiAg
c2l6ZV90IF9fa3NpemUoY29uc3Qgdm9pZCAqb2JqcCk7DQo+IEBAIC02NDcsMTAgKzY0NywxMCBA
QCBzdGF0aWMgaW5saW5lIF9fYWxsb2Nfc2l6ZSgxLCAyKSB2b2lkICprbWFsbG9jX2FycmF5KHNp
emVfdCBuLCBzaXplX3Qgc2l6ZSwgZ2ZwXw0KPiAgICogQG5ld19zaXplOiBuZXcgc2l6ZSBvZiBh
IHNpbmdsZSBtZW1iZXIgb2YgdGhlIGFycmF5DQo+ICAgKiBAZmxhZ3M6IHRoZSB0eXBlIG9mIG1l
bW9yeSB0byBhbGxvY2F0ZSAoc2VlIGttYWxsb2MpDQo+ICAgKi8NCj4gLXN0YXRpYyBpbmxpbmUg
X19hbGxvY19zaXplKDIsIDMpIHZvaWQgKiBfX211c3RfY2hlY2sga3JlYWxsb2NfYXJyYXkodm9p
ZCAqcCwNCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBzaXplX3QgbmV3X24sDQo+IC0gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2l6ZV90IG5l
d19zaXplLA0KPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGdmcF90IGZsYWdzKQ0KPiArc3RhdGljIGlubGluZSBfX3Jl
YWxsb2Nfc2l6ZSgyLCAzKSB2b2lkICogX19tdXN0X2NoZWNrIGtyZWFsbG9jX2FycmF5KHZvaWQg
KnAsDQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBzaXplX3QgbmV3X24sDQo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzaXplX3Qg
bmV3X3NpemUsDQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBnZnBfdCBmbGFncykNCj4gIHsNCj4gICAgICAgICBz
aXplX3QgYnl0ZXM7DQo+DQo+IEBAIC03NzQsNyArNzc0LDcgQEAgc3RhdGljIGlubGluZSBfX2Fs
bG9jX3NpemUoMSwgMikgdm9pZCAqa3ZjYWxsb2Moc2l6ZV90IG4sIHNpemVfdCBzaXplLCBnZnBf
dCBmbGENCj4gIH0NCj4NCj4gIGV4dGVybiB2b2lkICprdnJlYWxsb2MoY29uc3Qgdm9pZCAqcCwg
c2l6ZV90IG9sZHNpemUsIHNpemVfdCBuZXdzaXplLCBnZnBfdCBmbGFncykNCj4gLSAgICAgICAg
ICAgICAgICAgICAgIF9fYWxsb2Nfc2l6ZSgzKTsNCj4gKyAgICAgICAgICAgICAgICAgICAgIF9f
cmVhbGxvY19zaXplKDMpOw0KPiAgZXh0ZXJuIHZvaWQga3ZmcmVlKGNvbnN0IHZvaWQgKmFkZHIp
Ow0KPiAgZXh0ZXJuIHZvaWQga3ZmcmVlX3NlbnNpdGl2ZShjb25zdCB2b2lkICphZGRyLCBzaXpl
X3QgbGVuKTsNCj4NCj4gZGlmZiAtLWdpdCBhL21tL3NsYWJfY29tbW9uLmMgYi9tbS9zbGFiX2Nv
bW1vbi5jDQo+IGluZGV4IDE3OTk2NjQ5Y2ZlMy4uNDU3NjcxYWNlN2ViIDEwMDY0NA0KPiAtLS0g
YS9tbS9zbGFiX2NvbW1vbi5jDQo+ICsrKyBiL21tL3NsYWJfY29tbW9uLmMNCj4gQEAgLTExMzQs
OCArMTEzNCw4IEBAIG1vZHVsZV9pbml0KHNsYWJfcHJvY19pbml0KTsNCj4NCj4gICNlbmRpZiAv
KiBDT05GSUdfU0xBQiB8fCBDT05GSUdfU0xVQl9ERUJVRyAqLw0KPg0KPiAtc3RhdGljIF9fYWx3
YXlzX2lubGluZSB2b2lkICpfX2RvX2tyZWFsbG9jKGNvbnN0IHZvaWQgKnAsIHNpemVfdCBuZXdf
c2l6ZSwNCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGdmcF90
IGZsYWdzKQ0KPiArc3RhdGljIF9fYWx3YXlzX2lubGluZSBfX3JlYWxsb2Nfc2l6ZSgyKSB2b2lk
ICoNCj4gK19fZG9fa3JlYWxsb2MoY29uc3Qgdm9pZCAqcCwgc2l6ZV90IG5ld19zaXplLCBnZnBf
dCBmbGFncykNCj4gIHsNCj4gICAgICAgICB2b2lkICpyZXQ7DQo+ICAgICAgICAgc2l6ZV90IGtz
Ow0KPiAtLQ0KPiAyLjM0LjENCj4NCg0KDQotLQ0KR3J7b2V0amUsZWV0aW5nfXMsDQoNCiAgICAg
ICAgICAgICAgICAgICAgICAgIEdlZXJ0DQoNCi0tDQpHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhl
cmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnDQoN
CkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwg
bXlzZWxmIGEgaGFja2VyLiBCdXQNCndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBq
dXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4NCiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
