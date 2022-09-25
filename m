Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3561A60C343
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 07:31:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ED3FA3ECD4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 05:31:36 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id D66683F991
	for <linaro-mm-sig@lists.linaro.org>; Sun, 25 Sep 2022 07:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1664090272;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FnuW0+nquE7jeCs1wGd25t/HgD5sAtMc07QK9kih2sQ=;
	b=L4s8o0hguGsy5o0ZjyOC1pxki5R06658lWuEeJT1BUobWtJtdkEnco1sg4lZSXC2D1Sv4b
	5TXFbrm4B78OCG/Zle0W9MtXS8LmboDOSdxt1KlI4Yscf60q0X30GS3fCTHDwemEXMn8RR
	qZPxbcXuYxSfLuJf/l8bKLk8PIu/rJc=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-224-ERuxIoxyNIaAi-_P8Bn-UA-1; Sun, 25 Sep 2022 03:17:48 -0400
X-MC-Unique: ERuxIoxyNIaAi-_P8Bn-UA-1
Received: by mail-qt1-f198.google.com with SMTP id e22-20020ac84b56000000b0035bb64ad562so2700470qts.17
        for <linaro-mm-sig@lists.linaro.org>; Sun, 25 Sep 2022 00:17:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date;
        bh=FnuW0+nquE7jeCs1wGd25t/HgD5sAtMc07QK9kih2sQ=;
        b=4YeJHXhKaI91dRAl/TTAgv78YJVlbv2jHZHDwbyh99/g6QyzpomF6nqmIzXhk4d4ZK
         6Vu/6WNC14aXucMnn7VFFXaYkAxaxgBrY+AppT3gJ0lAgZONvCk+RLF+ZZbxIoBk0i0Q
         pNzQGlf3bacFxWSTuNhl5zfv9aLbzKg2g/cRf4IEX1ao0dzXeJIApm+8vE9L9rpou+Pc
         19KnzQXt6ao0/G8BaX5Kg5ytR4H+Ubkr58wVIcRHyvGetUYBzQsfR/7mQqOIB93iLgbI
         lAFvqyiw4TwieJLw5xw4wcUwXDxEsLwUt7qWS4ZK3R18NPwrHMQUyu07CgYgF3RhUwtV
         G9Og==
X-Gm-Message-State: ACrzQf2uqR068pWI2x8Ycj853ApR4BfAcMkGZa4pjys+aB2U8nDUOPET
	oBAQBK/yJh0GHifuRFf/R3qGhRH9X+GECyQ2wv52B+ww2XwE3WXv53l5oT4u6BHlGcH5ngoCf8R
	TABdVdVBgEkf7mJoy+Tc5lKJc6Dk=
X-Received: by 2002:a05:620a:c8f:b0:6cb:e329:b5b9 with SMTP id q15-20020a05620a0c8f00b006cbe329b5b9mr10667167qki.95.1664090268092;
        Sun, 25 Sep 2022 00:17:48 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM4u6YF4dJIrwAN1QRZGgvTOpwH6qKYsc23O//LxYiiudu83+P6fv+LpA21i63RBBqqlayo//g==
X-Received: by 2002:a05:620a:c8f:b0:6cb:e329:b5b9 with SMTP id q15-20020a05620a0c8f00b006cbe329b5b9mr10667159qki.95.1664090267816;
        Sun, 25 Sep 2022 00:17:47 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-97-96.dyn.eolo.it. [146.241.97.96])
        by smtp.gmail.com with ESMTPSA id bp30-20020a05620a459e00b006c479acd82fsm10375465qkb.7.2022.09.25.00.17.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Sep 2022 00:17:47 -0700 (PDT)
Message-ID: <e340d993bce8e1b2742fba52ac6383771cfaddae.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Kees Cook <keescook@chromium.org>, Vlastimil Babka <vbabka@suse.cz>
Date: Sun, 25 Sep 2022 09:17:40 +0200
In-Reply-To: <20220923202822.2667581-5-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
	 <20220923202822.2667581-5-keescook@chromium.org>
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-MailFrom: pabeni@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BXX6BO7BMMOHTJYXUVRGJAGHJ63KM6Y5
X-Message-ID-Hash: BXX6BO7BMMOHTJYXUVRGJAGHJ63KM6Y5
X-Mailman-Approved-At: Tue, 25 Oct 2022 05:31:19 +0000
CC: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Ojeda <ojeda@kernel.org>, linux-kernel@vger.kernel.org, linux-mm@kvack.org, linux-btrfs@vger.kernel.org, linux-media@vger.kernel.org, dri-de
 vel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 04/16] skbuff: Phase out ksize() fallback for frag_size
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BXX6BO7BMMOHTJYXUVRGJAGHJ63KM6Y5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCAyMDIyLTA5LTIzIGF0IDEzOjI4IC0wNzAwLCBLZWVzIENvb2sgd3JvdGU6DQo+IEFs
bCBjYWxsZXJzIG9mIEFQSXMgdGhhdCBhbGxvd2VkIGEgMC1zaXplZCBmcmFnX3NpemUgYXBwZWFy
IHRvIGJlDQo+IHBhc3NpbmcgYWN0dWFsIHNpemUgaW5mb3JtYXRpb24gYWxyZWFkeQ0KDQpBRkFJ
Q1MsIG5vdCB5ZXQ6DQoNCmRyaXZlcnMvbmV0L2V0aGVybmV0L3Fsb2dpYy9xZWQvcWVkX2xsMi5j
Og0KCXNrYiA9IGJ1aWxkX3NrYihidWZmZXItPmRhdGEsIDApOyAvLyAtPiBfX2J1aWxkX3NrYigu
Li4sIDApwqANCgkJLy8gLT4gIF9fYnVpbGRfc2tiX2Fyb3VuZCgpDQoNCmRyaXZlcnMvbmV0L2V0
aGVybmV0L2Jyb2FkY29tL2JueDIuYzoNCglza2IgPSBidWlsZF9za2IoZGF0YSwgMCk7DQoNCkkg
Z3Vlc3Mgc29tZSBtb3JlIGRyaXZlcnMgaGF2ZSBjYWxscyBsZWFkaW5nIHRvwqANCg0KCV9fYnVp
bGRfc2tiX2Fyb3VuZCguLi4sICAwKQ0KDQp0aGVyZSBhcmUgc2V2ZXJhbCBjYWxsIHBhdGggdG8g
Y2hlY2tzLi4uDQoNCg0KPiAsIHNvIHRoaXMgdXNlIG9mIGtzaXplKCkgY2FuDQo+IGJlIHJlbW92
ZWQuIEhvd2V2ZXIsIGp1c3QgaW4gY2FzZSB0aGVyZSBpcyBzb21ldGhpbmcgc3RpbGwgZGVwZW5k
aW5nDQo+IG9uIHRoaXMgYmVoYXZpb3IsIGlzc3VlIGEgV0FSTiBhbmQgZmFsbCBiYWNrIHRvIGFz
IGJlZm9yZSB0byBrc2l6ZSgpDQo+IHdoaWNoIG1lYW5zIHdlJ2xsIGFsc28gcG90ZW50aWFsbHkg
Z2V0IEtBU0FOIHdhcm5pbmdzLg0KPiANCj4gQ2M6ICJEYXZpZCBTLiBNaWxsZXIiIDxkYXZlbUBk
YXZlbWxvZnQubmV0Pg0KPiBDYzogRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPg0K
PiBDYzogSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4NCj4gQ2M6IFBhb2xvIEFiZW5p
IDxwYWJlbmlAcmVkaGF0LmNvbT4NCj4gQ2M6IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcNCj4gU2ln
bmVkLW9mZi1ieTogS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+DQo+IC0tLQ0KPiAg
bmV0L2NvcmUvc2tidWZmLmMgfCAxOCArKysrKysrKysrLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxMCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L25ldC9jb3JlL3NrYnVmZi5jIGIvbmV0L2NvcmUvc2tidWZmLmMNCj4gaW5kZXggMGIzMGZiZGJk
MGQwLi44NGNhODljNzgxY2QgMTAwNjQ0DQo+IC0tLSBhL25ldC9jb3JlL3NrYnVmZi5jDQo+ICsr
KyBiL25ldC9jb3JlL3NrYnVmZi5jDQo+IEBAIC0xOTUsNyArMTk1LDExIEBAIHN0YXRpYyB2b2lk
IF9fYnVpbGRfc2tiX2Fyb3VuZChzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCB2b2lkICpkYXRhLA0KPiAg
CQkJICAgICAgIHVuc2lnbmVkIGludCBmcmFnX3NpemUpDQo+ICB7DQo+ICAJc3RydWN0IHNrYl9z
aGFyZWRfaW5mbyAqc2hpbmZvOw0KPiAtCXVuc2lnbmVkIGludCBzaXplID0gZnJhZ19zaXplID8g
OiBrc2l6ZShkYXRhKTsNCj4gKwl1bnNpZ25lZCBpbnQgc2l6ZSA9IGZyYWdfc2l6ZTsNCj4gKw0K
PiArCS8qIEFsbCBjYWxsZXJzIHNob3VsZCBiZSBzZXR0aW5nIGZyYWcgc2l6ZSBub3c/ICovDQo+
ICsJaWYgKFdBUk5fT05fT05DRShzaXplID09IDApKQ0KPiArCQlzaXplID0ga3NpemUoZGF0YSk7
DQoNCkF0IHNvbWUgcG9pbnQgaW4gdGhlIGZ1dHVyZSwgSSBndWVzcyB3ZSBjb3VsZCBldmVuIGRy
b3AgdGhpcyBjaGVjaywNCnJpZ2h0Pw0KDQpUaGFua3MhDQoNClBhb2xvDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
