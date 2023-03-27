Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAE06CAE24
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Mar 2023 21:06:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 263BC3E952
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Mar 2023 19:06:11 +0000 (UTC)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	by lists.linaro.org (Postfix) with ESMTPS id 6ADD03E950
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Mar 2023 19:06:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=qEjf8I4G;
	spf=pass (lists.linaro.org: domain of mattst88@gmail.com designates 209.85.166.49 as permitted sender) smtp.mailfrom=mattst88@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-io1-f49.google.com with SMTP id p17so4327431ioj.10
        for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Mar 2023 12:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679943960;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q/6pCbry1/ETo4U2530l82j/Esz1dkFEPg21dCL6WTw=;
        b=qEjf8I4GOQ3ShgwJE6dqrPcG9qSLP1lpAnbSL/0QwbfT1gw6trLRerbTznbRPCRWGl
         ptSbtzVddhG0DF8sVXgPL8e0GpPUdTihkFWyQ2IeBBZCx3d9pTXVufkQvN4Ln2eoFpho
         minaZRNBe4lO/t3G2g5qBtUXF96q+1EmUvZVp86unc7ExQxECI7xGikVOPtjmWcztXlO
         RvVP3tNTL8YCaIKjtdq6QujfVIMo6xUontUVN+nJQBg/aNtTfhXedAA3JZ25BODvyIt1
         EK3lQYu0LF0cIkZghChlDy5bfu+7aBMkXpcUyHtmnra0GZc1Y0wCFi+hqwWmUvZdo855
         UU9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679943960;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q/6pCbry1/ETo4U2530l82j/Esz1dkFEPg21dCL6WTw=;
        b=gfb07SmFzzIguvOGW59xCLlbOq9ru9hjth3e5oQ9LMYgl2eH4j71zAl+IkQBzo9laL
         srlMSwZjDSnU9C4e2wRVHqgoSHKLiXwePj1EfZ0SsPYjydWITR7faqyAve9jo33ut7Qh
         Z64/oKOE75oWga9f9tskwDSoyWycOJWjwL8hkq5OWMhvSEMOsYyzf3tRLU0jHCkpCgVH
         chX7mhGIMxhZ54QDFh7xI8Budmx3xN2LFSnF4QL8NMZGcHCTCsWihhuUkuUkDg9iPeyZ
         LcGAhtwpJNDR6pGVTeU+eNoGu2NfYejkmeuvs4q1gchCMAkn52CvlGUM472WKHAYq/L3
         GcoQ==
X-Gm-Message-State: AO0yUKVlViXGrQT0fZTMzKvZ9V0x+Z5MKbqnuqpJO/gKb4cqupl7gyWf
	mLP+B7Dcx5kKbCExOl+fbzLj/62+RvKWfEBT+gE=
X-Google-Smtp-Source: AK7set+YB0mgSsfhYO28hAVommFXrSJ7Khtm4bPRuGYAQdnaWKxQKYL1vrIABfxBGJd0YlxvVRZhRVs+2KV9z5cUoZY=
X-Received: by 2002:a02:2208:0:b0:3ad:65e:e489 with SMTP id
 o8-20020a022208000000b003ad065ee489mr5198516jao.1.1679943959800; Mon, 27 Mar
 2023 12:05:59 -0700 (PDT)
MIME-Version: 1.0
References: <20230308155322.344664-1-robdclark@gmail.com>
In-Reply-To: <20230308155322.344664-1-robdclark@gmail.com>
From: Matt Turner <mattst88@gmail.com>
Date: Mon, 27 Mar 2023 15:05:48 -0400
Message-ID: <CAEdQ38FGQe_z2T2vUCsSYvH52WZc75OPCCFYOSEKJ9MzXq0ynw@mail.gmail.com>
To: Rob Clark <robdclark@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6ADD03E950
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[23];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.49:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,amd.com,gmail.com,intel.com,basnieuwenhuizen.nl,chromium.org,quicinc.com,linaro.org,padovan.org,lists.linaro.org,vger.kernel.org,huawei.com,poorly.run];
	RCVD_COUNT_ONE(0.00)[1];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: ZBG2S6XXYN3OJFCNZCMO7JDY5VNFW75J
X-Message-ID-Hash: ZBG2S6XXYN3OJFCNZCMO7JDY5VNFW75J
X-MailFrom: mattst88@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, Luben Tuikov <luben.tuikov@amd.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>, Rob Clark <robdclark@chromium.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Douglas Anderson <dianders@chromium.org>, Gustavo Padovan <gustavo@padovan.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, Liu Shixin <liushixin2@huawei.com>, Sean Paul <sean@poorly.run>, Stephen Boyd <swboyd@chromium.org>, Vinod Polimera <quic_vpolimer@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 00/15] dma-fence: Deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZBG2S6XXYN3OJFCNZCMO7JDY5VNFW75J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXIgOCwgMjAyMyBhdCAxMDo1M+KAr0FNIFJvYiBDbGFyayA8cm9iZGNsYXJrQGdt
YWlsLmNvbT4gd3JvdGU6DQo+DQo+IEZyb206IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVt
Lm9yZz4NCj4NCj4gVGhpcyBzZXJpZXMgYWRkcyBhIGRlYWRsaW5lIGhpbnQgdG8gZmVuY2VzLCBz
byByZWFsdGltZSBkZWFkbGluZXMNCj4gc3VjaCBhcyB2YmxhbmsgY2FuIGJlIGNvbW11bmljYXRl
ZCB0byB0aGUgZmVuY2Ugc2lnbmFsbGVyIGZvciBwb3dlci8NCj4gZnJlcXVlbmN5IG1hbmFnZW1l
bnQgZGVjaXNpb25zLg0KPg0KPiBUaGlzIGlzIHBhcnRpYWxseSBpbnNwaXJlZCBieSBhIHRyaWNr
IGk5MTUgZG9lcywgYnV0IGltcGxlbWVudGVkDQo+IHZpYSBkbWEtZmVuY2UgZm9yIGEgY291cGxl
IG9mIHJlYXNvbnM6DQo+DQo+IDEpIFRvIGNvbnRpbnVlIHRvIGJlIGFibGUgdG8gdXNlIHRoZSBh
dG9taWMgaGVscGVycw0KPiAyKSBUbyBzdXBwb3J0IGNhc2VzIHdoZXJlIGRpc3BsYXkgYW5kIGdw
dSBhcmUgZGlmZmVyZW50IGRyaXZlcnMNCj4NCj4gVGhpcyBpdGVyYXRpb24gYWRkcyBhIGRtYS1m
ZW5jZSBpb2N0bCB0byBzZXQgYSBkZWFkbGluZSAoYm90aCB0bw0KPiBzdXBwb3J0IGlndC10ZXN0
cywgYW5kIGNvbXBvc2l0b3JzIHdoaWNoIGRlbGF5IGRlY2lzaW9ucyBhYm91dCB3aGljaA0KPiBj
bGllbnQgYnVmZmVyIHRvIGRpc3BsYXkpLCBhbmQgYSBzd19zeW5jIGlvY3RsIHRvIHJlYWQgYmFj
ayB0aGUNCj4gZGVhZGxpbmUuICBJR1QgdGVzdHMgdXRpbGl6aW5nIHRoZXNlIGNhbiBiZSBmb3Vu
ZCBhdDoNCg0KDQpJIHJlYWQgdGhyb3VnaCB0aGUgc2VyaWVzIGFuZCBkaWRuJ3Qgc3BvdCBhbnl0
aGluZy4gSGF2ZSBhIHJhdGhlciB3ZWFrDQoNClJldmlld2VkLWJ5OiBNYXR0IFR1cm5lciA8bWF0
dHN0ODhAZ21haWwuY29tPg0KDQpUaGFua3MhDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
