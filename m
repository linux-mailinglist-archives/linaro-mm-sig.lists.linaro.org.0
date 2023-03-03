Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 435756AA5F1
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  4 Mar 2023 00:53:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F0A103EF2A
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 23:53:51 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by lists.linaro.org (Postfix) with ESMTPS id 9F33D3EC21
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Mar 2023 23:53:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=CysvhjzJ;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.208.47 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id s11so16627226edy.8
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Mar 2023 15:53:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gnDZ9x2blH5V8YINfT6XOEOEFytwM5xt/JuAKzXCEWU=;
        b=CysvhjzJrWfpzLbmZMuln5F1LZXgBzBu4oR3PEjQqN/OQMt+Zh8GTxeYL9ZXR3QmSE
         tyHKB8gKDZRKXHxB0zBebHIXxH0FX3fNke1AHBevQacjZXOEyvedakh+rWEEdRE4HHAe
         D4Ci9kbvYC4wulP/eArIu7vNgMtZjjWcZG0OxuRi2gIxsqyFVj0ZZQobqXhgjoKFfcct
         dCLOTpYmzE01SHLQTatMXTNpuCNlej00nsQS+PVyBCgfb2manXjYDA12QXhAEfjSWtW+
         MqITV/TCHiEoJQJ3W9K4EGzf/rysfbK1CP/4eeauBSBf8P4A9s0zp9pktLwVtUGIyWIk
         +JtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gnDZ9x2blH5V8YINfT6XOEOEFytwM5xt/JuAKzXCEWU=;
        b=b8HFOINCYi3+/CVLl5z+7EQBlMy+/rKFGNI+IO3cVzkwpWXbk7OTSgZ0Hm9JqvEz3F
         QbRPE0vxRW3tLruObADOgcDkLaTINe/fy3uojaTeytslk7Su+/J4A2cFX9LLdV7QTN0s
         f880NQW6QuJyiU3b7q12LTtA6vwMiMF5Kr/nFYGyWmLg+60UiKmTMyIMiT/XVK63HdJt
         KFdStnMR91bYBhGQoeqClyorAzeN/LjC5p8jBCoGmWAL7lvZ/bvNtxgk5UHyASGfIBdz
         cl0WTkAUjlG3Z/zBRyKEddzDp0KZbJVD/ro5sptAX4FZq2cdSIqGBssHP5aKenog2W/A
         h7WQ==
X-Gm-Message-State: AO0yUKWIjbagJeuFGWWhN7XZBHGYe/8R0Gp1xwNeceMIWp5jMjZaO2hQ
	pjAa0yN15gHtMazfZtnhnTknpYwc
X-Google-Smtp-Source: AK7set9JmLUWJX+fB3FtuG1918iXvCOsgAoXJ70x5Nw9+h8/nbjmxtRgVk16QJDub3WUOofqGBZIpQ==
X-Received: by 2002:a17:907:70e:b0:878:955e:b4a4 with SMTP id xb14-20020a170907070e00b00878955eb4a4mr4595666ejb.33.1677887610406;
        Fri, 03 Mar 2023 15:53:30 -0800 (PST)
Received: from [10.203.3.194] ([185.202.34.81])
        by smtp.gmail.com with ESMTPSA id h17-20020a17090634d100b008ee5356801dsm1463032ejb.187.2023.03.03.15.53.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Mar 2023 15:53:30 -0800 (PST)
Message-ID: <b9a5778c-0eae-28c1-1806-33550345e619@linaro.org>
Date: Sat, 4 Mar 2023 01:53:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-GB
To: Rob Clark <robdclark@gmail.com>
References: <20230302235356.3148279-1-robdclark@gmail.com>
 <20230302235356.3148279-13-robdclark@gmail.com>
 <a5249009-0bec-61a5-4dd2-5728ee3017e3@linaro.org>
 <CAF6AEGtmQu-8LEdm68vXJJSpssXq2AShEdexqTGVW0WO5VmtDQ@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <CAF6AEGtmQu-8LEdm68vXJJSpssXq2AShEdexqTGVW0WO5VmtDQ@mail.gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9F33D3EC21
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[22];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.47:from];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,quicinc.com,poorly.run,linaro.org,vger.kernel.org,lists.linaro.org];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: NLZFBD4D6PKUJEB7YYX33XC5BHVG3SQD
X-Message-ID-Hash: NLZFBD4D6PKUJEB7YYX33XC5BHVG3SQD
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 12/15] drm/msm: Add deadline based boost support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NLZFBD4D6PKUJEB7YYX33XC5BHVG3SQD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDMvMDMvMjAyMyAxOTowMywgUm9iIENsYXJrIHdyb3RlOg0KPiBPbiBGcmksIE1hciAzLCAy
MDIzIGF0IDI6MTDigK9BTSBEbWl0cnkgQmFyeXNoa292DQo+IDxkbWl0cnkuYmFyeXNoa292QGxp
bmFyby5vcmc+IHdyb3RlOg0KPj4NCj4+IE9uIDAzLzAzLzIwMjMgMDE6NTMsIFJvYiBDbGFyayB3
cm90ZToNCj4+PiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+Pj4N
Cj4+PiBUcmFjayB0aGUgbmVhcmVzdCBkZWFkbGluZSBvbiBhIGZlbmNlIHRpbWVsaW5lIGFuZCBz
ZXQgYSB0aW1lciB0byBleHBpcmUNCj4+PiBzaG9ydGx5IGJlZm9yZSB0byB0cmlnZ2VyIGJvb3N0
IGlmIHRoZSBmZW5jZSBoYXMgbm90IHlldCBiZWVuIHNpZ25hbGVkLg0KPj4+DQo+Pj4gdjI6IHJl
YmFzZQ0KPj4+DQo+Pj4gU2lnbmVkLW9mZi1ieTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21p
dW0ub3JnPg0KPj4+IC0tLQ0KPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2ZlbmNlLmMg
fCA3NCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4+PiAgICBkcml2ZXJzL2dw
dS9kcm0vbXNtL21zbV9mZW5jZS5oIHwgMjAgKysrKysrKysrDQo+Pj4gICAgMiBmaWxlcyBjaGFu
Z2VkLCA5NCBpbnNlcnRpb25zKCspDQo+Pg0KPj4gUmV2aWV3ZWQtYnk6IERtaXRyeSBCYXJ5c2hr
b3YgPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4NCj4+DQo+PiBBIHNtYWxsIHF1ZXN0aW9u
OiBkbyB3ZSBib29zdCB0byBmaXQgaW50byB0aGUgZGVhZGxpbmUgb3IgdG8gbWlzcyB0aGUNCj4+
IGRlYWRsaW5lIGZvciBhcyBsaXR0bGUgYXMgcG9zc2libGU/IElmIHRoZSBmb3JtZXIgaXMgdGhl
IGNhc2UsIHdlIG1pZ2h0DQo+PiBuZWVkIHRvIGFkanVzdCAzbXMgZGVwZW5kaW5nIG9uIHRoZSB3
b3JrbG9hZC4NCj4gDQo+IFRoZSBnb2FsIGlzIGFzIG11Y2ggdG8gcnVuIHdpdGggaGlnaGVyIGNs
b2NrIG9uIHRoZSBuZXh0IGZyYW1lIGFzIGl0DQo+IGlzIHRvIG5vdCBtaXNzIGEgZGVhZGxpbmUu
ICBJZS4gd2UgZG9uJ3Qgd2FudCBkZXZmcmVxIHRvIGNvbWUgdG8gdGhlDQo+IGNvbmNsdXNpb24g
dGhhdCBydW5uaW5nIGF0IDw1MCUgY2xrcyBpcyBiZXN0IGR1ZSB0byB0aGUgYW1vdW50IG9mDQo+
IHV0aWxpemF0aW9uIGNhdXNlZCBieSBtaXNzaW5nIGV2ZXIgb3RoZXIgdmJsYW5rLg0KDQpBY2ss
IHRoYW5rcyBmb3IgdGhlIGV4cGxhbmF0aW9uLg0KDQo+IA0KPiBCdXQgM21zIGlzIG1vc3RseSBq
dXN0ICJzZWVtcyBsaWtlIGEgZ29vZCBjb21wcm9taXNlIiB2YWx1ZS4gIEl0IG1pZ2h0IGNoYW5n
ZS4NCj4gDQo+IEJSLA0KPiAtUg0KPiANCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vbXNtL21zbV9mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZmVuY2UuYw0K
Pj4+IGluZGV4IDU2NjQxNDA4ZWE3NC4uNTFiNDYxZjMyMTAzIDEwMDY0NA0KPj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9tc20vbXNtX2ZlbmNlLmMNCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
bXNtL21zbV9mZW5jZS5jDQo+Pj4gQEAgLTgsNiArOCwzNSBAQA0KPj4+DQo+Pj4gICAgI2luY2x1
ZGUgIm1zbV9kcnYuaCINCj4+PiAgICAjaW5jbHVkZSAibXNtX2ZlbmNlLmgiDQo+Pj4gKyNpbmNs
dWRlICJtc21fZ3B1LmgiDQo+Pj4gKw0KPj4+ICtzdGF0aWMgc3RydWN0IG1zbV9ncHUgKmZjdHgy
Z3B1KHN0cnVjdCBtc21fZmVuY2VfY29udGV4dCAqZmN0eCkNCj4+PiArew0KPj4+ICsgICAgIHN0
cnVjdCBtc21fZHJtX3ByaXZhdGUgKnByaXYgPSBmY3R4LT5kZXYtPmRldl9wcml2YXRlOw0KPj4+
ICsgICAgIHJldHVybiBwcml2LT5ncHU7DQo+Pj4gK30NCj4+PiArDQo+Pj4gK3N0YXRpYyBlbnVt
IGhydGltZXJfcmVzdGFydCBkZWFkbGluZV90aW1lcihzdHJ1Y3QgaHJ0aW1lciAqdCkNCj4+PiAr
ew0KPj4+ICsgICAgIHN0cnVjdCBtc21fZmVuY2VfY29udGV4dCAqZmN0eCA9IGNvbnRhaW5lcl9v
Zih0LA0KPj4+ICsgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgbXNtX2ZlbmNlX2NvbnRleHQs
IGRlYWRsaW5lX3RpbWVyKTsNCj4+PiArDQo+Pj4gKyAgICAga3RocmVhZF9xdWV1ZV93b3JrKGZj
dHgyZ3B1KGZjdHgpLT53b3JrZXIsICZmY3R4LT5kZWFkbGluZV93b3JrKTsNCj4+PiArDQo+Pj4g
KyAgICAgcmV0dXJuIEhSVElNRVJfTk9SRVNUQVJUOw0KPj4+ICt9DQo+Pj4gKw0KPj4+ICtzdGF0
aWMgdm9pZCBkZWFkbGluZV93b3JrKHN0cnVjdCBrdGhyZWFkX3dvcmsgKndvcmspDQo+Pj4gK3sN
Cj4+PiArICAgICBzdHJ1Y3QgbXNtX2ZlbmNlX2NvbnRleHQgKmZjdHggPSBjb250YWluZXJfb2Yo
d29yaywNCj4+PiArICAgICAgICAgICAgICAgICAgICAgc3RydWN0IG1zbV9mZW5jZV9jb250ZXh0
LCBkZWFkbGluZV93b3JrKTsNCj4+PiArDQo+Pj4gKyAgICAgLyogSWYgZGVhZGxpbmUgZmVuY2Ug
aGFzIGFscmVhZHkgcGFzc2VkLCBub3RoaW5nIHRvIGRvOiAqLw0KPj4+ICsgICAgIGlmIChtc21f
ZmVuY2VfY29tcGxldGVkKGZjdHgsIGZjdHgtPm5leHRfZGVhZGxpbmVfZmVuY2UpKQ0KPj4+ICsg
ICAgICAgICAgICAgcmV0dXJuOw0KPj4+ICsNCj4+PiArICAgICBtc21fZGV2ZnJlcV9ib29zdChm
Y3R4MmdwdShmY3R4KSwgMik7DQo+Pj4gK30NCj4+Pg0KPj4+DQo+Pj4gICAgc3RydWN0IG1zbV9m
ZW5jZV9jb250ZXh0ICoNCj4+PiBAQCAtMzYsNiArNjUsMTMgQEAgbXNtX2ZlbmNlX2NvbnRleHRf
YWxsb2Moc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9sYXRpbGUgdWludDMyX3QgKmZlbmNlcHRy
LA0KPj4+ICAgICAgICBmY3R4LT5jb21wbGV0ZWRfZmVuY2UgPSBmY3R4LT5sYXN0X2ZlbmNlOw0K
Pj4+ICAgICAgICAqZmN0eC0+ZmVuY2VwdHIgPSBmY3R4LT5sYXN0X2ZlbmNlOw0KPj4+DQo+Pj4g
KyAgICAgaHJ0aW1lcl9pbml0KCZmY3R4LT5kZWFkbGluZV90aW1lciwgQ0xPQ0tfTU9OT1RPTklD
LCBIUlRJTUVSX01PREVfQUJTKTsNCj4+PiArICAgICBmY3R4LT5kZWFkbGluZV90aW1lci5mdW5j
dGlvbiA9IGRlYWRsaW5lX3RpbWVyOw0KPj4+ICsNCj4+PiArICAgICBrdGhyZWFkX2luaXRfd29y
aygmZmN0eC0+ZGVhZGxpbmVfd29yaywgZGVhZGxpbmVfd29yayk7DQo+Pj4gKw0KPj4+ICsgICAg
IGZjdHgtPm5leHRfZGVhZGxpbmUgPSBrdGltZV9nZXQoKTsNCj4+PiArDQo+Pj4gICAgICAgIHJl
dHVybiBmY3R4Ow0KPj4+ICAgIH0NCj4+Pg0KPj4+IEBAIC02Miw2ICs5OCw4IEBAIHZvaWQgbXNt
X3VwZGF0ZV9mZW5jZShzdHJ1Y3QgbXNtX2ZlbmNlX2NvbnRleHQgKmZjdHgsIHVpbnQzMl90IGZl
bmNlKQ0KPj4+ICAgICAgICBzcGluX2xvY2tfaXJxc2F2ZSgmZmN0eC0+c3BpbmxvY2ssIGZsYWdz
KTsNCj4+PiAgICAgICAgaWYgKGZlbmNlX2FmdGVyKGZlbmNlLCBmY3R4LT5jb21wbGV0ZWRfZmVu
Y2UpKQ0KPj4+ICAgICAgICAgICAgICAgIGZjdHgtPmNvbXBsZXRlZF9mZW5jZSA9IGZlbmNlOw0K
Pj4+ICsgICAgIGlmIChtc21fZmVuY2VfY29tcGxldGVkKGZjdHgsIGZjdHgtPm5leHRfZGVhZGxp
bmVfZmVuY2UpKQ0KPj4+ICsgICAgICAgICAgICAgaHJ0aW1lcl9jYW5jZWwoJmZjdHgtPmRlYWRs
aW5lX3RpbWVyKTsNCj4+PiAgICAgICAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZmN0eC0+c3Bp
bmxvY2ssIGZsYWdzKTsNCj4+PiAgICB9DQo+Pj4NCj4+PiBAQCAtOTIsMTAgKzEzMCw0NiBAQCBz
dGF0aWMgYm9vbCBtc21fZmVuY2Vfc2lnbmFsZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+
Pj4gICAgICAgIHJldHVybiBtc21fZmVuY2VfY29tcGxldGVkKGYtPmZjdHgsIGYtPmJhc2Uuc2Vx
bm8pOw0KPj4+ICAgIH0NCj4+Pg0KPj4+ICtzdGF0aWMgdm9pZCBtc21fZmVuY2Vfc2V0X2RlYWRs
aW5lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBrdGltZV90IGRlYWRsaW5lKQ0KPj4+ICt7DQo+
Pj4gKyAgICAgc3RydWN0IG1zbV9mZW5jZSAqZiA9IHRvX21zbV9mZW5jZShmZW5jZSk7DQo+Pj4g
KyAgICAgc3RydWN0IG1zbV9mZW5jZV9jb250ZXh0ICpmY3R4ID0gZi0+ZmN0eDsNCj4+PiArICAg
ICB1bnNpZ25lZCBsb25nIGZsYWdzOw0KPj4+ICsgICAgIGt0aW1lX3Qgbm93Ow0KPj4+ICsNCj4+
PiArICAgICBzcGluX2xvY2tfaXJxc2F2ZSgmZmN0eC0+c3BpbmxvY2ssIGZsYWdzKTsNCj4+PiAr
ICAgICBub3cgPSBrdGltZV9nZXQoKTsNCj4+PiArDQo+Pj4gKyAgICAgaWYgKGt0aW1lX2FmdGVy
KG5vdywgZmN0eC0+bmV4dF9kZWFkbGluZSkgfHwNCj4+PiArICAgICAgICAgICAgICAgICAgICAg
a3RpbWVfYmVmb3JlKGRlYWRsaW5lLCBmY3R4LT5uZXh0X2RlYWRsaW5lKSkgew0KPj4+ICsgICAg
ICAgICAgICAgZmN0eC0+bmV4dF9kZWFkbGluZSA9IGRlYWRsaW5lOw0KPj4+ICsgICAgICAgICAg
ICAgZmN0eC0+bmV4dF9kZWFkbGluZV9mZW5jZSA9DQo+Pj4gKyAgICAgICAgICAgICAgICAgICAg
IG1heChmY3R4LT5uZXh0X2RlYWRsaW5lX2ZlbmNlLCAodWludDMyX3QpZmVuY2UtPnNlcW5vKTsN
Cj4+PiArDQo+Pj4gKyAgICAgICAgICAgICAvKg0KPj4+ICsgICAgICAgICAgICAgICogU2V0IHRp
bWVyIHRvIHRyaWdnZXIgYm9vc3QgM21zIGJlZm9yZSBkZWFkbGluZSwgb3INCj4+PiArICAgICAg
ICAgICAgICAqIGlmIHdlIGFyZSBhbHJlYWR5IGxlc3MgdGhhbiAzbXMgYmVmb3JlIHRoZSBkZWFk
bGluZQ0KPj4+ICsgICAgICAgICAgICAgICogc2NoZWR1bGUgYm9vc3Qgd29yayBpbW1lZGlhdGVs
eS4NCj4+PiArICAgICAgICAgICAgICAqLw0KPj4+ICsgICAgICAgICAgICAgZGVhZGxpbmUgPSBr
dGltZV9zdWIoZGVhZGxpbmUsIG1zX3RvX2t0aW1lKDMpKTsNCj4+PiArDQo+Pj4gKyAgICAgICAg
ICAgICBpZiAoa3RpbWVfYWZ0ZXIobm93LCBkZWFkbGluZSkpIHsNCj4+PiArICAgICAgICAgICAg
ICAgICAgICAga3RocmVhZF9xdWV1ZV93b3JrKGZjdHgyZ3B1KGZjdHgpLT53b3JrZXIsDQo+Pj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmZmN0eC0+ZGVhZGxpbmVfd29y
ayk7DQo+Pj4gKyAgICAgICAgICAgICB9IGVsc2Ugew0KPj4+ICsgICAgICAgICAgICAgICAgICAg
ICBocnRpbWVyX3N0YXJ0KCZmY3R4LT5kZWFkbGluZV90aW1lciwgZGVhZGxpbmUsDQo+Pj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBIUlRJTUVSX01PREVfQUJTKTsNCj4+
PiArICAgICAgICAgICAgIH0NCj4+PiArICAgICB9DQo+Pj4gKw0KPj4+ICsgICAgIHNwaW5fdW5s
b2NrX2lycXJlc3RvcmUoJmZjdHgtPnNwaW5sb2NrLCBmbGFncyk7DQo+Pj4gK30NCj4+PiArDQo+
Pj4gICAgc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIG1zbV9mZW5jZV9vcHMgPSB7
DQo+Pj4gICAgICAgIC5nZXRfZHJpdmVyX25hbWUgPSBtc21fZmVuY2VfZ2V0X2RyaXZlcl9uYW1l
LA0KPj4+ICAgICAgICAuZ2V0X3RpbWVsaW5lX25hbWUgPSBtc21fZmVuY2VfZ2V0X3RpbWVsaW5l
X25hbWUsDQo+Pj4gICAgICAgIC5zaWduYWxlZCA9IG1zbV9mZW5jZV9zaWduYWxlZCwNCj4+PiAr
ICAgICAuc2V0X2RlYWRsaW5lID0gbXNtX2ZlbmNlX3NldF9kZWFkbGluZSwNCj4+PiAgICB9Ow0K
Pj4+DQo+Pj4gICAgc3RydWN0IGRtYV9mZW5jZSAqDQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9tc20vbXNtX2ZlbmNlLmggYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9mZW5jZS5o
DQo+Pj4gaW5kZXggN2YxNzk4YzU0Y2QxLi5jZGFlYmZiOTRmNWMgMTAwNjQ0DQo+Pj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZmVuY2UuaA0KPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9tc20vbXNtX2ZlbmNlLmgNCj4+PiBAQCAtNTIsNiArNTIsMjYgQEAgc3RydWN0IG1zbV9mZW5j
ZV9jb250ZXh0IHsNCj4+PiAgICAgICAgdm9sYXRpbGUgdWludDMyX3QgKmZlbmNlcHRyOw0KPj4+
DQo+Pj4gICAgICAgIHNwaW5sb2NrX3Qgc3BpbmxvY2s7DQo+Pj4gKw0KPj4+ICsgICAgIC8qDQo+
Pj4gKyAgICAgICogVE9ETyB0aGlzIGRvZXNuJ3QgcmVhbGx5IGRlYWwgd2l0aCBtdWx0aXBsZSBk
ZWFkbGluZXMsIGxpa2UNCj4+PiArICAgICAgKiBpZiB1c2Vyc3BhY2UgZ290IG11bHRpcGxlIGZy
YW1lcyBhaGVhZC4uIE9UT0ggYXRvbWljIHVwZGF0ZXMNCj4+PiArICAgICAgKiBkb24ndCBxdWV1
ZSwgc28gbWF5YmUgdGhhdCBpcyBvaw0KPj4+ICsgICAgICAqLw0KPj4+ICsNCj4+PiArICAgICAv
KiogbmV4dF9kZWFkbGluZTogVGltZSBvZiBuZXh0IGRlYWRsaW5lICovDQo+Pj4gKyAgICAga3Rp
bWVfdCBuZXh0X2RlYWRsaW5lOw0KPj4+ICsNCj4+PiArICAgICAvKioNCj4+PiArICAgICAgKiBu
ZXh0X2RlYWRsaW5lX2ZlbmNlOg0KPj4+ICsgICAgICAqDQo+Pj4gKyAgICAgICogRmVuY2UgdmFs
dWUgZm9yIG5leHQgcGVuZGluZyBkZWFkbGluZS4gIFRoZSBkZWFkbGluZSB0aW1lciBpcw0KPj4+
ICsgICAgICAqIGNhbmNlbGVkIHdoZW4gdGhpcyBmZW5jZSBpcyBzaWduYWxlZC4NCj4+PiArICAg
ICAgKi8NCj4+PiArICAgICB1aW50MzJfdCBuZXh0X2RlYWRsaW5lX2ZlbmNlOw0KPj4+ICsNCj4+
PiArICAgICBzdHJ1Y3QgaHJ0aW1lciBkZWFkbGluZV90aW1lcjsNCj4+PiArICAgICBzdHJ1Y3Qg
a3RocmVhZF93b3JrIGRlYWRsaW5lX3dvcms7DQo+Pj4gICAgfTsNCj4+Pg0KPj4+ICAgIHN0cnVj
dCBtc21fZmVuY2VfY29udGV4dCAqIG1zbV9mZW5jZV9jb250ZXh0X2FsbG9jKHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYsDQo+Pg0KPj4gLS0NCj4+IFdpdGggYmVzdCB3aXNoZXMNCj4+IERtaXRyeQ0K
Pj4NCg0KLS0gDQpXaXRoIGJlc3Qgd2lzaGVzDQpEbWl0cnkNCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
