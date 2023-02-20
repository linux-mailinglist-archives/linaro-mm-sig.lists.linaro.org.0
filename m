Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CE869C6A6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 09:30:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 722DE3F324
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 08:30:03 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by lists.linaro.org (Postfix) with ESMTPS id 81DE83E826
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 08:29:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=dgGItKAQ;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.42 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f42.google.com with SMTP id i31so6766710eda.12
        for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 00:29:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xI1y/hoA9blMQTDGCLBl5Smfvln2Cis/0rzcCHrgel4=;
        b=dgGItKAQQkeoMkR6EGYLvvEBh4kyCJuJUP8CtkK0UNPX4vQR968KiENnclo04Fmv2G
         gexczCIo1dulCOkggNp/SE9N7DofZUZNQ2qwxdCb26FdwF3ESSyr/kZZ3ooRtFoMfBrv
         EU4PV41LiSl3RlNJ96WbRQ44fDKq7KSbsWnwWUG7JWNg+vNV8CMekESG1XTowxQnP83y
         qroXSz3hcsVMQvpIok0DslOdGbdxStWmBngAUAqDok0GXaeD1nyLXsh7ob0cWlVIIYN9
         cooj/crL4Vy/q6cuCWdHvxord6gkEPxUyx7b8jt9jh0+zd22U4R8VsYF4Ax/4qCqshf1
         fmrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xI1y/hoA9blMQTDGCLBl5Smfvln2Cis/0rzcCHrgel4=;
        b=ztqwPbXI7KZoQbKgRSowPdwMR+wGUE5u5ik0axj+/Hg7bBt+apRHbTA31IF6JPCyoM
         K1ANepYKHF+0JvaRBbhG7tB5d6LmgbFZef8y8m9MoUoui+UxIMdpeoIGF2ZbJJOKChwa
         OsFrvaBG4fe8mQizUtNvBTj94Q0G4xYRjtM5ZiE02Q3MZGazIP7+6XNWbejWBNYl2vXv
         tbT8m1RoDKhJtXOGPiWuZD9rSewze+oE9Dg3ReQj7LuJ1oLTB9dGps4Rq23xurHuJwPU
         LBn/z6RyTBEyemvEtPzBk3wd7a0Ox2uhdiVH7eutv5UeThBxBFGh5WKXQruGmqJy+ONG
         0gPw==
X-Gm-Message-State: AO0yUKX2El9QwKzcRv/2p1Bnqwm9LiHnV3onEJTcsz+/CdziLuVEjeuL
	YdnsDuP99IUC61M1QK8N608=
X-Google-Smtp-Source: AK7set9nIZXRzZikG+ZH719XGstXeDBuSR82cx4u/xoIf3QKtViZ+v+G+0vYna9P7Pd7OqUcf1gz1Q==
X-Received: by 2002:a17:906:9c85:b0:8af:2e78:ac2b with SMTP id fj5-20020a1709069c8500b008af2e78ac2bmr11295659ejc.3.1676881782377;
        Mon, 20 Feb 2023 00:29:42 -0800 (PST)
Received: from ?IPV6:2a02:908:1256:79a0:dede:81be:2cf1:ada5? ([2a02:908:1256:79a0:dede:81be:2cf1:ada5])
        by smtp.gmail.com with ESMTPSA id bk26-20020a170906b0da00b0089d5aaf85besm5433874ejb.219.2023.02.20.00.29.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Feb 2023 00:29:41 -0800 (PST)
Message-ID: <a8506b6d-512e-6e20-e390-e064d48c4a04@gmail.com>
Date: Mon, 20 Feb 2023 09:29:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20230218211608.1630586-1-robdclark@gmail.com>
 <20230218211608.1630586-8-robdclark@gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20230218211608.1630586-8-robdclark@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 81DE83E826
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.42:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,daenzer.net,intel.com,amd.com,gmail.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org]
Message-ID-Hash: LTEXSQABLP5DQELKE5VDPK7E57ALDW5J
X-Message-ID-Hash: LTEXSQABLP5DQELKE5VDPK7E57ALDW5J
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 07/14] dma-buf/sw_sync: Add fence deadline support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LTEXSQABLP5DQELKE5VDPK7E57ALDW5J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTguMDIuMjMgdW0gMjI6MTUgc2NocmllYiBSb2IgQ2xhcms6DQo+IEZyb206IFJvYiBDbGFy
ayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4NCj4gVGhpcyBjb25zaXN0cyBvZiBzaW1wbHkg
c3RvcmluZyB0aGUgbW9zdCByZWNlbnQgZGVhZGxpbmUsIGFuZCBhZGRpbmcgYW4NCj4gaW9jdGwg
dG8gcmV0cmlldmUgdGhlIGRlYWRsaW5lLiAgVGhpcyBjYW4gYmUgdXNlZCBpbiBjb25qdW5jdGlv
biB3aXRoDQo+IHRoZSBTRVRfREVBRExJTkUgaW9jdGwgb24gYSBmZW5jZSBmZCBmb3IgdGVzdGlu
Zy4gIEllLiBjcmVhdGUgdmFyaW91cw0KPiBzd19zeW5jIGZlbmNlcywgbWVyZ2UgdGhlbSBpbnRv
IGEgZmVuY2UtYXJyYXksIHNldCBkZWFkbGluZSBvbiB0aGUNCj4gZmVuY2UtYXJyYXkgYW5kIGNv
bmZpcm0gdGhhdCBpdCBpcyBwcm9wYWdhdGVkIHByb3Blcmx5IHRvIGVhY2ggZmVuY2UuDQo+DQo+
IFNpZ25lZC1vZmYtYnk6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCg0KUmV2
aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0K
PiAtLS0NCj4gICBkcml2ZXJzL2RtYS1idWYvc3dfc3luYy5jICAgIHwgNTggKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrDQo+ICAgZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcu
aCB8ICAyICsrDQo+ICAgMiBmaWxlcyBjaGFuZ2VkLCA2MCBpbnNlcnRpb25zKCspDQo+DQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvc3dfc3luYy5jIGIvZHJpdmVycy9kbWEtYnVmL3N3
X3N5bmMuYw0KPiBpbmRleCAzNDhiM2E5MTcwZmEuLjUwZjI2MzhjY2NkMyAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvc3df
c3luYy5jDQo+IEBAIC01MiwxMiArNTIsMjYgQEAgc3RydWN0IHN3X3N5bmNfY3JlYXRlX2ZlbmNl
X2RhdGEgew0KPiAgIAlfX3MzMglmZW5jZTsgLyogZmQgb2YgbmV3IGZlbmNlICovDQo+ICAgfTsN
Cj4gICANCj4gKy8qKg0KPiArICogc3RydWN0IHN3X3N5bmNfZ2V0X2RlYWRsaW5lIC0gZ2V0IHRo
ZSBkZWFkbGluZSBvZiBhIHN3X3N5bmMgZmVuY2UNCj4gKyAqIEB0dl9zZWM6CXNlY29uZHMgZWxh
cHNlZCBzaW5jZSBlcG9jaCAob3V0KQ0KPiArICogQHR2X25zZWM6CW5hbm9zZWNvbmRzIGVsYXBz
ZWQgc2luY2UgdGhlIHRpbWUgZ2l2ZW4gYnkgdGhlIHR2X3NlYyAob3V0KQ0KPiArICogQGZlbmNl
X2ZkOgl0aGUgc3dfc3luYyBmZW5jZSBmZCAoaW4pDQo+ICsgKi8NCj4gK3N0cnVjdCBzd19zeW5j
X2dldF9kZWFkbGluZSB7DQo+ICsJX19zNjQJdHZfc2VjOw0KPiArCV9fczMyCXR2X25zZWM7DQo+
ICsJX19zMzIJZmVuY2VfZmQ7DQo+ICt9Ow0KPiArDQo+ICAgI2RlZmluZSBTV19TWU5DX0lPQ19N
QUdJQwknVycNCj4gICANCj4gICAjZGVmaW5lIFNXX1NZTkNfSU9DX0NSRUFURV9GRU5DRQlfSU9X
UihTV19TWU5DX0lPQ19NQUdJQywgMCxcDQo+ICAgCQlzdHJ1Y3Qgc3dfc3luY19jcmVhdGVfZmVu
Y2VfZGF0YSkNCj4gICANCj4gICAjZGVmaW5lIFNXX1NZTkNfSU9DX0lOQwkJCV9JT1coU1dfU1lO
Q19JT0NfTUFHSUMsIDEsIF9fdTMyKQ0KPiArI2RlZmluZSBTV19TWU5DX0dFVF9ERUFETElORQkJ
X0lPV1IoU1dfU1lOQ19JT0NfTUFHSUMsIDIsIFwNCj4gKwkJc3RydWN0IHN3X3N5bmNfZ2V0X2Rl
YWRsaW5lKQ0KPiAgIA0KPiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyB0aW1l
bGluZV9mZW5jZV9vcHM7DQo+ICAgDQo+IEBAIC0xNzEsNiArMTg1LDEzIEBAIHN0YXRpYyB2b2lk
IHRpbWVsaW5lX2ZlbmNlX3RpbWVsaW5lX3ZhbHVlX3N0cihzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSwNCj4gICAJc25wcmludGYoc3RyLCBzaXplLCAiJWQiLCBwYXJlbnQtPnZhbHVlKTsNCj4gICB9
DQo+ICAgDQo+ICtzdGF0aWMgdm9pZCB0aW1lbGluZV9mZW5jZV9zZXRfZGVhZGxpbmUoc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UsIGt0aW1lX3QgZGVhZGxpbmUpDQo+ICt7DQo+ICsJc3RydWN0IHN5
bmNfcHQgKnB0ID0gZG1hX2ZlbmNlX3RvX3N5bmNfcHQoZmVuY2UpOw0KPiArDQo+ICsJcHQtPmRl
YWRsaW5lID0gZGVhZGxpbmU7DQo+ICt9DQo+ICsNCj4gICBzdGF0aWMgY29uc3Qgc3RydWN0IGRt
YV9mZW5jZV9vcHMgdGltZWxpbmVfZmVuY2Vfb3BzID0gew0KPiAgIAkuZ2V0X2RyaXZlcl9uYW1l
ID0gdGltZWxpbmVfZmVuY2VfZ2V0X2RyaXZlcl9uYW1lLA0KPiAgIAkuZ2V0X3RpbWVsaW5lX25h
bWUgPSB0aW1lbGluZV9mZW5jZV9nZXRfdGltZWxpbmVfbmFtZSwNCj4gQEAgLTE3OSw2ICsyMDAs
NyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgdGltZWxpbmVfZmVuY2Vfb3Bz
ID0gew0KPiAgIAkucmVsZWFzZSA9IHRpbWVsaW5lX2ZlbmNlX3JlbGVhc2UsDQo+ICAgCS5mZW5j
ZV92YWx1ZV9zdHIgPSB0aW1lbGluZV9mZW5jZV92YWx1ZV9zdHIsDQo+ICAgCS50aW1lbGluZV92
YWx1ZV9zdHIgPSB0aW1lbGluZV9mZW5jZV90aW1lbGluZV92YWx1ZV9zdHIsDQo+ICsJLnNldF9k
ZWFkbGluZSA9IHRpbWVsaW5lX2ZlbmNlX3NldF9kZWFkbGluZSwNCj4gICB9Ow0KPiAgIA0KPiAg
IC8qKg0KPiBAQCAtMzg3LDYgKzQwOSwzOSBAQCBzdGF0aWMgbG9uZyBzd19zeW5jX2lvY3RsX2lu
YyhzdHJ1Y3Qgc3luY190aW1lbGluZSAqb2JqLCB1bnNpZ25lZCBsb25nIGFyZykNCj4gICAJcmV0
dXJuIDA7DQo+ICAgfQ0KPiAgIA0KPiArc3RhdGljIGludCBzd19zeW5jX2lvY3RsX2dldF9kZWFk
bGluZShzdHJ1Y3Qgc3luY190aW1lbGluZSAqb2JqLCB1bnNpZ25lZCBsb25nIGFyZykNCj4gK3sN
Cj4gKwlzdHJ1Y3Qgc3dfc3luY19nZXRfZGVhZGxpbmUgZGF0YTsNCj4gKwlzdHJ1Y3QgdGltZXNw
ZWM2NCB0czsNCj4gKwlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsNCj4gKwlzdHJ1Y3Qgc3luY19w
dCAqcHQ7DQo+ICsNCj4gKwlpZiAoY29weV9mcm9tX3VzZXIoJmRhdGEsICh2b2lkIF9fdXNlciAq
KWFyZywgc2l6ZW9mKGRhdGEpKSkNCj4gKwkJcmV0dXJuIC1FRkFVTFQ7DQo+ICsNCj4gKwlpZiAo
ZGF0YS50dl9zZWMgfHwgZGF0YS50dl9uc2VjKQ0KPiArCQlyZXR1cm4gLUVJTlZBTDsNCj4gKw0K
PiArCWZlbmNlID0gc3luY19maWxlX2dldF9mZW5jZShkYXRhLmZlbmNlX2ZkKTsNCj4gKwlpZiAo
IWZlbmNlKQ0KPiArCQlyZXR1cm4gLUVJTlZBTDsNCj4gKw0KPiArCXB0ID0gZG1hX2ZlbmNlX3Rv
X3N5bmNfcHQoZmVuY2UpOw0KPiArCWlmICghcHQpDQo+ICsJCXJldHVybiAtRUlOVkFMOw0KPiAr
DQo+ICsJdHMgPSBrdGltZV90b190aW1lc3BlYzY0KHB0LT5kZWFkbGluZSk7DQo+ICsJZGF0YS50
dl9zZWMgID0gdHMudHZfc2VjOw0KPiArCWRhdGEudHZfbnNlYyA9IHRzLnR2X25zZWM7DQo+ICsN
Cj4gKwlkbWFfZmVuY2VfcHV0KGZlbmNlKTsNCj4gKw0KPiArCWlmIChjb3B5X3RvX3VzZXIoKHZv
aWQgX191c2VyICopYXJnLCAmZGF0YSwgc2l6ZW9mKGRhdGEpKSkNCj4gKwkJcmV0dXJuIC1FRkFV
TFQ7DQo+ICsNCj4gKwlyZXR1cm4gMDsNCj4gK30NCj4gKw0KPiAgIHN0YXRpYyBsb25nIHN3X3N5
bmNfaW9jdGwoc3RydWN0IGZpbGUgKmZpbGUsIHVuc2lnbmVkIGludCBjbWQsDQo+ICAgCQkJICB1
bnNpZ25lZCBsb25nIGFyZykNCj4gICB7DQo+IEBAIC0zOTksNiArNDU0LDkgQEAgc3RhdGljIGxv
bmcgc3dfc3luY19pb2N0bChzdHJ1Y3QgZmlsZSAqZmlsZSwgdW5zaWduZWQgaW50IGNtZCwNCj4g
ICAJY2FzZSBTV19TWU5DX0lPQ19JTkM6DQo+ICAgCQlyZXR1cm4gc3dfc3luY19pb2N0bF9pbmMo
b2JqLCBhcmcpOw0KPiAgIA0KPiArCWNhc2UgU1dfU1lOQ19HRVRfREVBRExJTkU6DQo+ICsJCXJl
dHVybiBzd19zeW5jX2lvY3RsX2dldF9kZWFkbGluZShvYmosIGFyZyk7DQo+ICsNCj4gICAJZGVm
YXVsdDoNCj4gICAJCXJldHVybiAtRU5PVFRZOw0KPiAgIAl9DQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2RtYS1idWYvc3luY19kZWJ1Zy5oIGIvZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcuaA0K
PiBpbmRleCA2MTc2ZTUyYmEyZDcuLjJlMDE0NmQwYmRiYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9kbWEtYnVmL3N5bmNfZGVidWcuaA0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvc3luY19kZWJ1
Zy5oDQo+IEBAIC01NSwxMSArNTUsMTMgQEAgc3RhdGljIGlubGluZSBzdHJ1Y3Qgc3luY190aW1l
bGluZSAqZG1hX2ZlbmNlX3BhcmVudChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4gICAgKiBA
YmFzZTogYmFzZSBmZW5jZSBvYmplY3QNCj4gICAgKiBAbGluazogbGluayBvbiB0aGUgc3luYyB0
aW1lbGluZSdzIGxpc3QNCj4gICAgKiBAbm9kZTogbm9kZSBpbiB0aGUgc3luYyB0aW1lbGluZSdz
IHRyZWUNCj4gKyAqIEBkZWFkbGluZTogdGhlIG1vc3QgcmVjZW50bHkgc2V0IGZlbmNlIGRlYWRs
aW5lDQo+ICAgICovDQo+ICAgc3RydWN0IHN5bmNfcHQgew0KPiAgIAlzdHJ1Y3QgZG1hX2ZlbmNl
IGJhc2U7DQo+ICAgCXN0cnVjdCBsaXN0X2hlYWQgbGluazsNCj4gICAJc3RydWN0IHJiX25vZGUg
bm9kZTsNCj4gKwlrdGltZV90IGRlYWRsaW5lOw0KPiAgIH07DQo+ICAgDQo+ICAgZXh0ZXJuIGNv
bnN0IHN0cnVjdCBmaWxlX29wZXJhdGlvbnMgc3dfc3luY19kZWJ1Z2ZzX2ZvcHM7DQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
