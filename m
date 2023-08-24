Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCA379A93F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:58:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EBDE93F58D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:58:45 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 374F73F053
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Aug 2023 12:53:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=e4XOl6po;
	spf=pass (lists.linaro.org: domain of dakr@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=dakr@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1692881588;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kKQ9WOE2Aragce0+o/m7aVIS5d41CLufSWNbA4ImA4I=;
	b=e4XOl6po72VhG+V5ZtDj+oO7mcN4F+dN9421RMZeUeu/6DoP3EGLOTcl2TxR1OWiSyXuSl
	ZpNKT6ZF8UkMGCMUzx0jOB5Lm78uAnZRApLSebrUxoG9fWNl8ruOpv5vCOygS+x1LC3LRU
	mIk/vReqrvy0UjbB53sRnXMSe10A/C4=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-388-1rhw9IljN6q1yHm319IJdQ-1; Thu, 24 Aug 2023 08:53:06 -0400
X-MC-Unique: 1rhw9IljN6q1yHm319IJdQ-1
Received: by mail-ej1-f71.google.com with SMTP id a640c23a62f3a-94a356c74e0so506205366b.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Aug 2023 05:53:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692881584; x=1693486384;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kKQ9WOE2Aragce0+o/m7aVIS5d41CLufSWNbA4ImA4I=;
        b=WE7DwASTf73+BnZ5uXWi6qHsl45wSEU9EQzw9NAzUH8mZhGz9PtB0ccEWsHiy+IEIw
         RMOdC+meCam293Mg/ZnpZ+LIvjrNtkwRiaKRxBNiydlY1Xwo7MoncXG0HECMKy0Ii6Ab
         iEAaOCBQHl0P53vDHxAf1kg9nGR0Iu20ZR2LZ7Yet8434fw9kw8vtpu1tAGkQO9+nGCs
         +qZ5VzUyrMBQXUbARhgBPrdYfumL7hJvvjHTzjtXqBQ/2ZiNk27D5NyMBb5wE2QsqL5x
         /kA69ozOgoZxmq/O0g+7UkhO4ZyYCrk5gvG9Z3TpIMRBg7Dqm7yU1L81uqiGLi8reQFG
         ObwA==
X-Gm-Message-State: AOJu0YyLtBxFNc2PtYoNiB0iBIjDoVDKFa9IXbwDeP/992m1Pz3ong5l
	zINqg2vMaCoLXIjtBoNkRHMrb5HQKIQ8vQgIPL6t6dE852GY0YWmAlLSBZC8hKdhyH4b3xUtrcs
	SurI6GTd/Rgt5PmAh28G/JNMm4mk=
X-Received: by 2002:a17:907:778d:b0:9a1:d7cd:603a with SMTP id ky13-20020a170907778d00b009a1d7cd603amr4013266ejc.58.1692881584346;
        Thu, 24 Aug 2023 05:53:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHX6wkHtTAdCUwl5KxmFYb257JKgY0QOHqKG5XpgYEz7M1IInC82odlL1o5XG742djsg7RGlA==
X-Received: by 2002:a17:907:778d:b0:9a1:d7cd:603a with SMTP id ky13-20020a170907778d00b009a1d7cd603amr4013249ejc.58.1692881584054;
        Thu, 24 Aug 2023 05:53:04 -0700 (PDT)
Received: from ?IPV6:2a02:810d:4b3f:de9c:642:1aff:fe31:a15c? ([2a02:810d:4b3f:de9c:642:1aff:fe31:a15c])
        by smtp.gmail.com with ESMTPSA id lv27-20020a170906bc9b00b0099cb349d570sm10915871ejb.185.2023.08.24.05.53.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 05:53:03 -0700 (PDT)
Message-ID: <03804681-51f1-0840-6583-1753bd0a18d3@redhat.com>
Date: Thu, 24 Aug 2023 14:53:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Lee Jones <lee@kernel.org>
References: <20230824073710.2677348-1-lee@kernel.org>
 <20230824073710.2677348-19-lee@kernel.org>
From: Danilo Krummrich <dakr@redhat.com>
Organization: RedHat
In-Reply-To: <20230824073710.2677348-19-lee@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: 374F73F053
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.20 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.133.0/24];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[170.10.133.124:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.132.0/23, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[redhat.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: dakr@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AFQ5JTCOREKMC77ZEVBIC7QOYEUZIPSE
X-Message-ID-Hash: AFQ5JTCOREKMC77ZEVBIC7QOYEUZIPSE
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:58:03 +0000
CC: Thomas Zimmermann <tzimmermann@suse.de>, linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 18/20] drm/drm_gpuva_mgr: Remove set but unused variable 'prev'
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AFQ5JTCOREKMC77ZEVBIC7QOYEUZIPSE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgTGVlLA0KDQpPbiA4LzI0LzIzIDA5OjM3LCBMZWUgSm9uZXMgd3JvdGU6DQo+IEZpeGVzIHRo
ZSBmb2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3YXJuaW5nKHMpOg0KPiANCj4gICBkcml2ZXJz
L2dwdS9kcm0vZHJtX2dwdXZhX21nci5jOiBJbiBmdW5jdGlvbiDigJhfX2RybV9ncHV2YV9zbV9t
YXDigJk6DQo+ICAgZHJpdmVycy9ncHUvZHJtL2RybV9ncHV2YV9tZ3IuYzoxMDc5OjM5OiB3YXJu
aW5nOiB2YXJpYWJsZSDigJhwcmV24oCZIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1z
ZXQtdmFyaWFibGVdDQoNClRoYW5rcyBmb3IgZml4aW5nIHRoaXMgdXAuDQoNCkhvd2V2ZXIsIEkg
YWxyZWFkeSBoYWQgYSBwYXRjaCBpbiB0aGUgcXVldWUgYWRkcmVzc2luZyB0aGUgd2FybmluZywN
CndoaWNoIEkgYWxyZWFkeSBhcHBsaWVkIHRvIGRybS1taXNjL2RybS1taXNjLW5leHQtZml4ZXMu
DQoNCi0gRGFuaWxvDQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlQGtlcm5l
bC5vcmc+DQo+IC0tLQ0KPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0
QGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9y
Zz4NCj4gQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KPiBDYzog
RGF2aWQgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4NCj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRh
bmllbEBmZndsbC5jaD4NCj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5v
cmc+DQo+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4N
Cj4gQ2M6IERhbmlsbyBLcnVtbXJpY2ggPGRha3JAcmVkaGF0LmNvbT4NCj4gQ2M6IGRyaS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9y
Zw0KPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQo+IC0tLQ0KPiAgIGRyaXZl
cnMvZ3B1L2RybS9kcm1fZ3B1dmFfbWdyLmMgfCAxMCArKysrLS0tLS0tDQo+ICAgMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dwdXZhX21nci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9n
cHV2YV9tZ3IuYw0KPiBpbmRleCBmODZiZmFkNzRmZjhhLi5hZDk5YzljZmVkYWM3IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dwdXZhX21nci5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZ3B1dmFfbWdyLmMNCj4gQEAgLTEwNzYsNyArMTA3Niw3IEBAIF9fZHJtX2dw
dXZhX3NtX21hcChzdHJ1Y3QgZHJtX2dwdXZhX21hbmFnZXIgKm1nciwNCj4gICAJCSAgIHU2NCBy
ZXFfYWRkciwgdTY0IHJlcV9yYW5nZSwNCj4gICAJCSAgIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAq
cmVxX29iaiwgdTY0IHJlcV9vZmZzZXQpDQo+ICAgew0KPiAtCXN0cnVjdCBkcm1fZ3B1dmEgKnZh
LCAqbmV4dCwgKnByZXYgPSBOVUxMOw0KPiArCXN0cnVjdCBkcm1fZ3B1dmEgKnZhLCAqbmV4dDsN
Cj4gICAJdTY0IHJlcV9lbmQgPSByZXFfYWRkciArIHJlcV9yYW5nZTsNCj4gICAJaW50IHJldDsN
Cj4gICANCj4gQEAgLTExMDYsNyArMTEwNiw3IEBAIF9fZHJtX2dwdXZhX3NtX21hcChzdHJ1Y3Qg
ZHJtX2dwdXZhX21hbmFnZXIgKm1nciwNCj4gICAJCQkJcmV0ID0gb3BfdW5tYXBfY2Iob3BzLCBw
cml2LCB2YSwgbWVyZ2UpOw0KPiAgIAkJCQlpZiAocmV0KQ0KPiAgIAkJCQkJcmV0dXJuIHJldDsN
Cj4gLQkJCQlnb3RvIG5leHQ7DQo+ICsJCQkJY29udGludWU7DQo+ICAgCQkJfQ0KPiAgIA0KPiAg
IAkJCWlmIChlbmQgPiByZXFfZW5kKSB7DQo+IEBAIC0xMTUxLDcgKzExNTEsNyBAQCBfX2RybV9n
cHV2YV9zbV9tYXAoc3RydWN0IGRybV9ncHV2YV9tYW5hZ2VyICptZ3IsDQo+ICAgCQkJCXJldCA9
IG9wX3JlbWFwX2NiKG9wcywgcHJpdiwgJnAsIE5VTEwsICZ1KTsNCj4gICAJCQkJaWYgKHJldCkN
Cj4gICAJCQkJCXJldHVybiByZXQ7DQo+IC0JCQkJZ290byBuZXh0Ow0KPiArCQkJCWNvbnRpbnVl
Ow0KPiAgIAkJCX0NCj4gICANCj4gICAJCQlpZiAoZW5kID4gcmVxX2VuZCkgew0KPiBAQCAtMTE4
NCw3ICsxMTg0LDcgQEAgX19kcm1fZ3B1dmFfc21fbWFwKHN0cnVjdCBkcm1fZ3B1dmFfbWFuYWdl
ciAqbWdyLA0KPiAgIAkJCQlyZXQgPSBvcF91bm1hcF9jYihvcHMsIHByaXYsIHZhLCBtZXJnZSk7
DQo+ICAgCQkJCWlmIChyZXQpDQo+ICAgCQkJCQlyZXR1cm4gcmV0Ow0KPiAtCQkJCWdvdG8gbmV4
dDsNCj4gKwkJCQljb250aW51ZTsNCj4gICAJCQl9DQo+ICAgDQo+ICAgCQkJaWYgKGVuZCA+IHJl
cV9lbmQpIHsNCj4gQEAgLTEyMDUsOCArMTIwNSw2IEBAIF9fZHJtX2dwdXZhX3NtX21hcChzdHJ1
Y3QgZHJtX2dwdXZhX21hbmFnZXIgKm1nciwNCj4gICAJCQkJYnJlYWs7DQo+ICAgCQkJfQ0KPiAg
IAkJfQ0KPiAtbmV4dDoNCj4gLQkJcHJldiA9IHZhOw0KPiAgIAl9DQo+ICAgDQo+ICAgCXJldHVy
biBvcF9tYXBfY2Iob3BzLCBwcml2LA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
