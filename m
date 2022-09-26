Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 223765EA179
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Sep 2022 12:51:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9F3B240488
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Sep 2022 10:51:22 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by lists.linaro.org (Postfix) with ESMTPS id 58CCF3ED77
	for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Sep 2022 10:50:59 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id bq9so9597134wrb.4
        for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Sep 2022 03:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=RRTzEh4eX7QJuMr9PBYcSE6qe2YnKNQ4s+EeI3ZLOR8=;
        b=N2CdQZ5DidOd7rXorrAHwsU7REyGYjsVLRQw24k5i/zVnwxTVLXi79SokmwMPQ23dG
         ltHADiZ2Xdl1ZpGJHcq9sCz91HuEiXsn5cgUkN6cCcc0qhs3gJdO6JtWSNxOVKAm2maA
         RUP45w5trMH4BmzGD7P4bYWDoQ80fJ5gk/tTcqUWNZwxEVqilkjzRE/DXJj2o9eLrnMT
         Eibb/G/CFzTjUYyiTkzjs9+xpKaddZrQr2Ady4gPnOt6q/+8sfnBsKlTNnNA0nWB58c5
         OZTJtHQ5pIa7jnF722Q6qFBJveO3Wd9eH06jY4XW0T30bgmjP4abl+o8prFN+WFIDcbp
         QH5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=RRTzEh4eX7QJuMr9PBYcSE6qe2YnKNQ4s+EeI3ZLOR8=;
        b=hKlWSeQpKCpf8XINkip7KQUmGi9trrTjcbIbjzfncRoEAG78PZrTWASof71Lm9NXfp
         Rn8XTG2tUQyxqBwy0XFOS72mYwJiF2ZfnkOpa8gleNWLusHyFdLVMEff5df/PIQrAhph
         YRA2xqEZbcViehvOUGbTsdhl1LrymUwLHkz4T8E7N0iz4dciuQZifnKzdf+PdAkrJLF/
         1npXHDVG3LXntY81k87K1uFgD6Vv8Jv/eVPjJIsPOgbpqLPsFoBwQmEHaeICVSptFvKf
         JzzLg6RufyKk+aZOgEsvp/MA9H0/pYTidpr4j2WzBG3gPopZ34E/Tg/uoM62uH3iB5Qu
         x1cg==
X-Gm-Message-State: ACrzQf2Iz221Dj9g9asz7dHRpKzJ4VwJ1xdZh68ClxTtIiK0+Ay1NeZ9
	kv6wgm0O7jIVm/pTAOdnEMFLz7sbNJ0=
X-Google-Smtp-Source: AMsMyM7SuVBgSYWy5kh1HhAcVXy6Llss6obNUjIA/ZoXJgkE8T8RGaoTb9VPoRu5QX3Pg6i6kN2O6A==
X-Received: by 2002:a05:6402:2489:b0:454:11de:7698 with SMTP id q9-20020a056402248900b0045411de7698mr21490387eda.214.1664184564514;
        Mon, 26 Sep 2022 02:29:24 -0700 (PDT)
Received: from [192.168.178.21] (p4fc20ebf.dip0.t-ipconnect.de. [79.194.14.191])
        by smtp.gmail.com with ESMTPSA id lh3-20020a170906f8c300b00782ee6b34f2sm3710039ejb.183.2022.09.26.02.29.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Sep 2022 02:29:24 -0700 (PDT)
Message-ID: <a07c4a5e-1668-3609-334c-8aee2834ff90@gmail.com>
Date: Mon, 26 Sep 2022 11:29:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Kees Cook <keescook@chromium.org>, Vlastimil Babka <vbabka@suse.cz>
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-9-keescook@chromium.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20220923202822.2667581-9-keescook@chromium.org>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: /
X-Rspamd-Queue-Id: 58CCF3ED77
X-Spamd-Result: default: False [0.50 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[38];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.49:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,intel.com,gmail.com,linux.com,kernel.org,google.com,lge.com,linux-foundation.org,davemloft.net,redhat.com,linuxfoundation.org,toxicpanda.com,suse.com,fb.com,kvack.org,lists.osuosl.org,openvswitch.org,lists.linux.dev];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=N2CdQZ5D;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.49 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Message-ID-Hash: 4IBWHAVNGD3KA23NHEPXTVZOHTD3FZPR
X-Message-ID-Hash: 4IBWHAVNGD3KA23NHEPXTVZOHTD3FZPR
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Oj eda <ojeda@kernel.org>, linux-kernel
 @vger.kernel.org, linux-mm@kvack.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 08/16] dma-buf: Proactively round up to kmalloc bucket size
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4IBWHAVNGD3KA23NHEPXTVZOHTD3FZPR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjMuMDkuMjIgdW0gMjI6Mjggc2NocmllYiBLZWVzIENvb2s6DQo+IEluc3RlYWQgb2YgZGlz
Y292ZXJpbmcgdGhlIGttYWxsb2MgYnVja2V0IHNpemUgX2FmdGVyXyBhbGxvY2F0aW9uLCByb3Vu
ZA0KPiB1cCBwcm9hY3RpdmVseSBzbyB0aGUgYWxsb2NhdGlvbiBpcyBleHBsaWNpdGx5IG1hZGUg
Zm9yIHRoZSBmdWxsIHNpemUsDQo+IGFsbG93aW5nIHRoZSBjb21waWxlciB0byBjb3JyZWN0bHkg
cmVhc29uIGFib3V0IHRoZSByZXN1bHRpbmcgc2l6ZSBvZg0KPiB0aGUgYnVmZmVyIHRocm91Z2gg
dGhlIGV4aXN0aW5nIF9fYWxsb2Nfc2l6ZSgpIGhpbnQuDQo+DQo+IENjOiBTdW1pdCBTZW13YWwg
PHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KPiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcN
Cj4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZw0KPiBTaWduZWQtb2ZmLWJ5OiBLZWVzIENvb2sgPGtlZXNjb29r
QGNocm9taXVtLm9yZz4NCg0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4NCg0KPiAtLS0NCj4gICBkcml2ZXJzL2RtYS1idWYvZG1hLXJlc3Yu
YyB8IDkgKysrKysrKy0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5j
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCj4gaW5kZXggMjA1YWNiMmM3NDRkLi41YjBh
NGI4ODMwZmYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQo+ICsr
KyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQo+IEBAIC05OCwxMiArOTgsMTcgQEAgc3Rh
dGljIHZvaWQgZG1hX3Jlc3ZfbGlzdF9zZXQoc3RydWN0IGRtYV9yZXN2X2xpc3QgKmxpc3QsDQo+
ICAgc3RhdGljIHN0cnVjdCBkbWFfcmVzdl9saXN0ICpkbWFfcmVzdl9saXN0X2FsbG9jKHVuc2ln
bmVkIGludCBtYXhfZmVuY2VzKQ0KPiAgIHsNCj4gICAJc3RydWN0IGRtYV9yZXN2X2xpc3QgKmxp
c3Q7DQo+ICsJc2l6ZV90IHNpemU7DQo+ICAgDQo+IC0JbGlzdCA9IGttYWxsb2Moc3RydWN0X3Np
emUobGlzdCwgdGFibGUsIG1heF9mZW5jZXMpLCBHRlBfS0VSTkVMKTsNCj4gKwkvKiBSb3VuZCB1
cCB0byB0aGUgbmV4dCBrbWFsbG9jIGJ1Y2tldCBzaXplLiAqLw0KPiArCXNpemUgPSBrbWFsbG9j
X3NpemVfcm91bmR1cChzdHJ1Y3Rfc2l6ZShsaXN0LCB0YWJsZSwgbWF4X2ZlbmNlcykpOw0KPiAr
DQo+ICsJbGlzdCA9IGttYWxsb2Moc2l6ZSwgR0ZQX0tFUk5FTCk7DQo+ICAgCWlmICghbGlzdCkN
Cj4gICAJCXJldHVybiBOVUxMOw0KPiAgIA0KPiAtCWxpc3QtPm1heF9mZW5jZXMgPSAoa3NpemUo
bGlzdCkgLSBvZmZzZXRvZih0eXBlb2YoKmxpc3QpLCB0YWJsZSkpIC8NCj4gKwkvKiBHaXZlbiB0
aGUgcmVzdWx0aW5nIGJ1Y2tldCBzaXplLCByZWNhbGN1bGF0ZWQgbWF4X2ZlbmNlcy4gKi8NCj4g
KwlsaXN0LT5tYXhfZmVuY2VzID0gKHNpemUgLSBvZmZzZXRvZih0eXBlb2YoKmxpc3QpLCB0YWJs
ZSkpIC8NCj4gICAJCXNpemVvZigqbGlzdC0+dGFibGUpOw0KPiAgIA0KPiAgIAlyZXR1cm4gbGlz
dDsNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
