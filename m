Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D73751C9C1
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 May 2022 21:57:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE57D4809F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 May 2022 19:57:35 +0000 (UTC)
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [170.10.133.74])
	by lists.linaro.org (Postfix) with ESMTPS id 4F75D3EF80
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 May 2022 19:57:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651780650;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rQdApoYa6nUTANKsVJL2yCvAWducoOnmFhGo9oVvBLo=;
	b=h5sn2L+uS+ybPxJYdEiyVldvi9Hcpp1dDaRPZ8I2qLyzhrA+KfNG21kB+RQFU3LEaSYI1r
	0DEQe19tUYeWWl95bu9pn/Q+7Yu53U9H28l8FPHJFDTHMjUKfVKabaDhUAH5LfhNFy/+Yf
	+JoqwM7JwPZ4E5yNyRbc0vzAjhyYnSY=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-660-XIIdditMMvieY3JYbwS4fg-1; Thu, 05 May 2022 15:57:29 -0400
X-MC-Unique: XIIdditMMvieY3JYbwS4fg-1
Received: by mail-qv1-f69.google.com with SMTP id kc6-20020a056214410600b0045a97658c7dso4032380qvb.16
        for <linaro-mm-sig@lists.linaro.org>; Thu, 05 May 2022 12:57:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:organization:user-agent:mime-version
         :content-transfer-encoding;
        bh=rQdApoYa6nUTANKsVJL2yCvAWducoOnmFhGo9oVvBLo=;
        b=Dn9KonCfzcZRpBRjXFrYxHTDi9tZJf2RwJLhmPZCaDemCyjHSQDssdT8F40hk2gFcg
         7S2D+6VPwK0iMioUE0oCACgydjk/DOw2wLLyBd3LU62j2pm1zgOWq8cWDzsHQ/jxUIlt
         b3jn7vFWVYw1uxYtm50jFbOkMBEUYWwvHVuZCVTmBehCe+QTF9jP0hZF1OCYX/p+ZOdP
         0qtSSSmP5zHxa8rR4VZIPIjsJ1Dahne4726auxWfw3/2pnbQheQfdNKhfXyxiZ/Tq6/2
         Re9rHKDc0vWrW0Wo1wzkIBLR90HI13Ugdh59eyK6owOczGCANpmvz9wGO+8mIHPW64xu
         /J1w==
X-Gm-Message-State: AOAM532ef0IWZjnFpQKnBASywHRDAaYgwK9vZ5aeEFckqNrI41cldtFY
	rRl4O194B164Kz+s+7knUza9ww63cK/Te3crpTmIJVUqVZxtawnAyl+enOlX0GGsQGyiLfJ2pt4
	QUFcCiLIvM+G1Z+Fk5ODKaS2vZVc=
X-Received: by 2002:a37:9381:0:b0:69f:62c6:56a7 with SMTP id v123-20020a379381000000b0069f62c656a7mr21018121qkd.643.1651780649333;
        Thu, 05 May 2022 12:57:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJysHvCP5TnQ3sEmfDp/p5w9i9wXshs650VSW1K7lLdusgFc5hlOZKEwi/HjjBeApccdfiF3kQ==
X-Received: by 2002:a37:9381:0:b0:69f:62c6:56a7 with SMTP id v123-20020a379381000000b0069f62c656a7mr21018112qkd.643.1651780649132;
        Thu, 05 May 2022 12:57:29 -0700 (PDT)
Received: from [192.168.8.138] (static-71-184-137-158.bstnma.ftas.verizon.net. [71.184.137.158])
        by smtp.gmail.com with ESMTPSA id l15-20020ac848cf000000b002f39b99f6c3sm1288303qtr.93.2022.05.05.12.57.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 12:57:28 -0700 (PDT)
Message-ID: <7574d491866ffa7c1a4607885b76140ba4206477.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Mark Menzynski <mmenzyns@redhat.com>, linux-kernel@vger.kernel.org
Date: Thu, 05 May 2022 15:57:27 -0400
In-Reply-To: <20220504171851.17188-1-mmenzyns@redhat.com>
References: <20220504171851.17188-1-mmenzyns@redhat.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Message-ID-Hash: R6KUU6QK7YXH2PEB4ECTTTV2BWSL5CWD
X-Message-ID-Hash: R6KUU6QK7YXH2PEB4ECTTTV2BWSL5CWD
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ben Skeggs <bskeggs@redhat.com>, Karol Herbst <kherbst@redhat.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/nouveau: reorder nouveau_drm_device_fini
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R6KUU6QK7YXH2PEB4ECTTTV2BWSL5CWD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG1tLCBJIHRoaW5rIHdlIG1pZ2h0IGp1c3QgbmVlZCB0byBtb3ZlIHRoZSBkcm1fa21zX2hlbHBl
cl9wb2xsX2VuYWJsZSgpIGNhbGwNCnRvIHRoZSBlbmQgaGVyZSBpbnN0ZWFkIG9mIGFsbCBvZiBu
b3V2ZWF1X2Rpc3BsYXlfaW5pdCgpLiBJIHJlYWxpemVkIHRoaXMNCmJlY2F1c2UgaW4gbm91dmVh
dV9kaXNwbGF5X2luaXQoKSBpdCBzZWVtcyB0aGF0IHdlIGFjdHVhbGx5IHJlbHkgb24NCm5vdXZl
YXVfZGlzcGxheV9pbml0KCkgdG8gc2V0dXAgaG90cGx1ZyBpbnRlcnJ1cHRzIC0gd2hpY2ggd2Ug
ZG8gYWN0dWFsbHkgbmVlZA0KdGhpcyBlYXJseSBvbiBpbiB0aGUgZHJpdmVyIHByb2JlIHByb2Nl
c3MuDQoNClRoYXQgYmVpbmcgc2FpZCB0aG91Z2gsIGRybV9rbXNfaGVscGVyX3BvbGxfZW5hYmxl
KCkgc2hvdWxkbid0IGJlIHJlcXVpcmVkIGZvcg0KTVNUIHNob3J0IEhQRCBJUlFzIGZyb20gd29y
a2luZyBzbyBtb3ZpbmcgdGhhdCBpbnN0ZWFkIHNob3VsZCB3b3JrLg0KDQpPbiBXZWQsIDIwMjIt
MDUtMDQgYXQgMTk6MTggKzAyMDAsIE1hcmsgTWVuenluc2tpIHdyb3RlOg0KPiBSZXNvdXJjZXMg
bmVlZGVkIGZvciBvdXRwdXQgcG9sbCB3b3JrZXJzIGFyZSBkZXN0cm95ZWQgaW4NCj4gbm91dmVh
dV9mYmNvbl9maW5pKCkgYmVmb3JlIG91dHB1dCBwb2xsIHdvcmtlcnMgYXJlIGNsZWFyZWQgaW4N
Cj4gbm91dmVhdV9kaXNwbGF5X2ZpbmkoKS4gVGhpcyBtZWFucyB0aGVyZSBpcyBhIHRpbWUgYmV0
d2VlbiBmYmNvbl9maW5pDQo+IGFuZCBkaXNwbGF5X2ZpbmksIHdoZXJlIGlmIG91dHB1dCBwb2xs
IGhhcHBlbnMsIGl0IGNyYXNoZXMuDQo+IA0KPiBCVUc6IEtBU0FOOiB1c2UtYWZ0ZXItZnJlZSBp
bg0KPiBfX2RybV9mYl9oZWxwZXJfaW5pdGlhbF9jb25maWdfYW5kX3VubG9jay5jb2xkKzB4MWYz
LzB4MjkxDQo+IFtkcm1fa21zX2hlbHBlcl0NCj4gDQo+IENjOiBCZW4gU2tlZ2dzIDxic2tlZ2dz
QHJlZGhhdC5jb20+DQo+IENjOiBLYXJvbCBIZXJic3QgPGtoZXJic3RAcmVkaGF0LmNvbT4NCj4g
Q2M6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+DQo+IENjOiBEYXZpZCBBaXJsaWUgPGFp
cmxpZWRAbGludXguaWU+DQo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+DQo+
IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KPiBDYzogIkNocmlz
dGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IENjOiBkcmktZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBub3V2ZWF1QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPiBDYzogbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZw0KPiBDYzogbGludXgtbWVkaWFA
dmdlci5rZXJuZWwub3JnDQo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCj4g
U2lnbmVkLW9mZi1ieTogTWFyayBNZW56eW5za2kgPG1tZW56eW5zQHJlZGhhdC5jb20+DQo+IC0t
LQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZHJtLmMgfCAxNyArKysrKysr
Ky0tLS0tLS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDkgZGVsZXRp
b25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVh
dV9kcm0uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZHJtLmMNCj4gaW5k
ZXggNTYxMzA5ZDQ0N2UwLi43NzNlZmRkMjBkMmYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9ub3V2ZWF1L25vdXZlYXVfZHJtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL25vdXZl
YXUvbm91dmVhdV9kcm0uYw0KPiBAQCAtNTg4LDEyICs1ODgsNiBAQCBub3V2ZWF1X2RybV9kZXZp
Y2VfaW5pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQ0KPiDCoMKgwqDCoMKgwqDCoMKgaWYgKHJl
dCkNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBnb3RvIGZhaWxfZGlzcGN0b3I7
DQo+IMKgDQo+IC3CoMKgwqDCoMKgwqDCoGlmIChkZXYtPm1vZGVfY29uZmlnLm51bV9jcnRjKSB7
DQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXQgPSBub3V2ZWF1X2Rpc3BsYXlf
aW5pdChkZXYsIGZhbHNlLCBmYWxzZSk7DQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBpZiAocmV0KQ0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGdvdG8gZmFpbF9kaXNwaW5pdDsNCj4gLcKgwqDCoMKgwqDCoMKgfQ0KPiAtDQo+IMKgwqDC
oMKgwqDCoMKgwqBub3V2ZWF1X2RlYnVnZnNfaW5pdChkcm0pOw0KPiDCoMKgwqDCoMKgwqDCoMKg
bm91dmVhdV9od21vbl9pbml0KGRldik7DQo+IMKgwqDCoMKgwqDCoMKgwqBub3V2ZWF1X3N2bV9p
bml0KGRybSk7DQo+IEBAIC02MDEsNiArNTk1LDEyIEBAIG5vdXZlYXVfZHJtX2RldmljZV9pbml0
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpDQo+IMKgwqDCoMKgwqDCoMKgwqBub3V2ZWF1X2ZiY29u
X2luaXQoZGV2KTsNCj4gwqDCoMKgwqDCoMKgwqDCoG5vdXZlYXVfbGVkX2luaXQoZGV2KTsNCj4g
wqANCj4gK8KgwqDCoMKgwqDCoMKgaWYgKGRldi0+bW9kZV9jb25maWcubnVtX2NydGMpIHsNCj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldCA9IG5vdXZlYXVfZGlzcGxheV9pbml0
KGRldiwgZmFsc2UsIGZhbHNlKTsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlm
IChyZXQpDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
Z290byBmYWlsX2Rpc3Bpbml0Ow0KPiArwqDCoMKgwqDCoMKgwqB9DQo+ICsNCj4gwqDCoMKgwqDC
oMKgwqDCoGlmIChub3V2ZWF1X3Btb3BzX3J1bnRpbWUoKSkgew0KPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHBtX3J1bnRpbWVfdXNlX2F1dG9zdXNwZW5kKGRldi0+ZGV2KTsNCj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwbV9ydW50aW1lX3NldF9hdXRvc3VzcGVu
ZF9kZWxheShkZXYtPmRldiwgNTAwMCk7DQo+IEBAIC02NDEsMTUgKzY0MSwxNCBAQCBub3V2ZWF1
X2RybV9kZXZpY2VfZmluaShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQ0KPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHBtX3J1bnRpbWVfZm9yYmlkKGRldi0+ZGV2KTsNCj4gwqDCoMKg
wqDCoMKgwqDCoH0NCj4gwqANCj4gK8KgwqDCoMKgwqDCoMKgaWYgKGRldi0+bW9kZV9jb25maWcu
bnVtX2NydGMpDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBub3V2ZWF1X2Rpc3Bs
YXlfZmluaShkZXYsIGZhbHNlLCBmYWxzZSk7DQo+IMKgwqDCoMKgwqDCoMKgwqBub3V2ZWF1X2xl
ZF9maW5pKGRldik7DQo+IMKgwqDCoMKgwqDCoMKgwqBub3V2ZWF1X2ZiY29uX2ZpbmkoZGV2KTsN
Cj4gwqDCoMKgwqDCoMKgwqDCoG5vdXZlYXVfZG1lbV9maW5pKGRybSk7DQo+IMKgwqDCoMKgwqDC
oMKgwqBub3V2ZWF1X3N2bV9maW5pKGRybSk7DQo+IMKgwqDCoMKgwqDCoMKgwqBub3V2ZWF1X2h3
bW9uX2ZpbmkoZGV2KTsNCj4gwqDCoMKgwqDCoMKgwqDCoG5vdXZlYXVfZGVidWdmc19maW5pKGRy
bSk7DQo+IC0NCj4gLcKgwqDCoMKgwqDCoMKgaWYgKGRldi0+bW9kZV9jb25maWcubnVtX2NydGMp
DQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBub3V2ZWF1X2Rpc3BsYXlfZmluaShk
ZXYsIGZhbHNlLCBmYWxzZSk7DQo+IMKgwqDCoMKgwqDCoMKgwqBub3V2ZWF1X2Rpc3BsYXlfZGVz
dHJveShkZXYpOw0KPiDCoA0KPiDCoMKgwqDCoMKgwqDCoMKgbm91dmVhdV9hY2NlbF9maW5pKGRy
bSk7DQoNCi0tIA0KQ2hlZXJzLA0KIEx5dWRlIFBhdWwgKHNoZS9oZXIpDQogU29mdHdhcmUgRW5n
aW5lZXIgYXQgUmVkIEhhdA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
