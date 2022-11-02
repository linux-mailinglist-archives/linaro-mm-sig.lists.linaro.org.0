Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9236166C0
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Nov 2022 17:00:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8770D3F515
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Nov 2022 16:00:08 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by lists.linaro.org (Postfix) with ESMTPS id 7B06C3EE5B
	for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Nov 2022 15:59:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=pE+d2BMu;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.222.171 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qk1-f171.google.com with SMTP id 8so12018903qka.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 02 Nov 2022 08:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F/1grPaD+xMIby1Txd3zoCjkj1cuL2trjeEvsrdeQYk=;
        b=pE+d2BMuxQjQYzxQqj4PXTA8MdpkV/KJe2dAN8yPM0xASyxTbxq9if/GzGXIwkEnkm
         Zhq28XdD6jQ/2Ix6oTGL+2kJW+/C9S8DXs0WmmtbOwWoF4Fc/9Q2VlLDHMjAYS0aBhOI
         8QrjLRVd9u5A9F0OF6DkrHbdoqLDQQzShm7+B0hYX/wvOUoGswqKQt4l7RXX+gEwCpu9
         h9Mtj97CQnB26geCAwTJr+LTcXYOQCqOISPZNaTmK3RCJKbGO2QgW9zjwgAQFBxAA2WW
         Urz83q4xaNSKPMWBsS15Pju/tNWJnjU7O7ktboSF+MB3PDFm7tZw69e7zYLw8VeOiXJD
         CT3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F/1grPaD+xMIby1Txd3zoCjkj1cuL2trjeEvsrdeQYk=;
        b=42JRN77dxOCtHlk16q+Sw+YH//LZEWB55cZ3/EGpw3Z6Hh0A1sWrGnnBmXNBTq35Od
         oBtJeks7kQ0mxQ1nnAdkHYhYz6VNCHKKzrQOvHaDW2UYtRve++aWAnR5dqPom5H/hCcp
         aUdh6IanaBPrSLsER9dKkMnFoYANPmdpESfzQh4MT/ZFrrGjKzbaoO0VvYgZ2Rdw+cNz
         e8p2kE8uhUn5UG11odqjnde54jd3Fnhyat9V1OhftDV3EyWS6HGgozwDsFK2RnaUn5I/
         AUwplaup1Y02UwHDwuS3W3+5wUE4fycvUuhVv2trFAbj93SVkKtb+qHmhVXJFDht5uwb
         qElA==
X-Gm-Message-State: ACrzQf1sMaMJgf69fyx/M99ydVcZTy5hWf+4mdI1KkspXrKwd9K3bJ7H
	b3P0oJa/lxRCNvMjzF11QiALWEnba3Q4e6Ozoio=
X-Google-Smtp-Source: AMsMyM4hLVYbFgPOuL0CR9Bpu/6eSDfsMz83d21/2tJDZhIHfJzJSngYiCH/QQcArG+V4Qg/WyZljtSopOCAqV2gAII=
X-Received: by 2002:a05:620a:254e:b0:6c7:855c:6eb with SMTP id
 s14-20020a05620a254e00b006c7855c06ebmr18731720qko.39.1667404790104; Wed, 02
 Nov 2022 08:59:50 -0700 (PDT)
MIME-Version: 1.0
References: <20221101214051.159988-1-robdclark@gmail.com> <044540cc-1d8b-45da-ac8b-ecc133b45dc1@amd.com>
In-Reply-To: <044540cc-1d8b-45da-ac8b-ecc133b45dc1@amd.com>
From: Rob Clark <robdclark@gmail.com>
Date: Wed, 2 Nov 2022 09:00:06 -0700
Message-ID: <CAF6AEGvFxU10Uu+eBRm0ChyVDPg3DMNoeHd4zCWHWwRzRBvP3Q@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --------
X-Rspamd-Queue-Id: 7B06C3EE5B
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:email];
	RCPT_COUNT_TWELVE(0.00)[15];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.171:from];
	NEURAL_HAM(-0.00)[-0.638];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,ffwll.ch,chromium.org,quicinc.com,linaro.org,poorly.run,gmail.com,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[209.85.222.171:from]
Message-ID-Hash: 2ELT6FGW22KCGTOJ6J566TUSR4O3QTQC
X-Message-ID-Hash: 2ELT6FGW22KCGTOJ6J566TUSR4O3QTQC
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, Rob Clark <robdclark@chromium.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/msm: Remove exclusive-fence hack
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2ELT6FGW22KCGTOJ6J566TUSR4O3QTQC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBOb3YgMiwgMjAyMiBhdCAzOjQ2IEFNIENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+DQo+IEFtIDAxLjExLjIyIHVtIDIyOjQwIHNjaHJp
ZWIgUm9iIENsYXJrOg0KPiA+IEZyb206IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVtLm9y
Zz4NCj4gPg0KPiA+IFRoZSB3b3JrYXJvdW5kIHdhcyBpbml0aWFsbHkgbmVjZXNzYXJ5IGR1ZSB0
byBkbWFfcmVzdiBoYXZpbmcgb25seSBhDQo+ID4gc2luZ2xlIGV4Y2x1c2l2ZSBmZW5jZSBzbG90
LCB5ZXQgd2hlIGRvbid0IG5lY2Vzc2FyaWx5IGtub3cgd2hhdCBvcmRlcg0KPiA+IHRoZSBncHUg
c2NoZWR1bGVyIHdpbGwgc2NoZWR1bGUgam9icy4gIFVuZm9ydHVuYXRlbHkgdGhpcyB3b3JrYXJv
dW5kDQo+ID4gYWxzbyBoYXMgdGhlIHJlc3VsdCBvZiBmb3JjaW5nIGltcGxpY2l0IHN5bmMsIGV2
ZW4gd2hlbiB1c2Vyc3BhY2UgZG9lcw0KPiA+IG5vdCB3YW50IGl0Lg0KPiA+DQo+ID4gSG93ZXZl
ciwgc2luY2UgY29tbWl0IDA0N2ExYjg3N2VkNCAoImRtYS1idWYgJiBkcm0vYW1kZ3B1OiByZW1v
dmUNCj4gPiBkbWFfcmVzdiB3b3JrYXJvdW5kIikgdGhlIHdvcmthcm91bmQgaXMgbm8gbG9uZ2Vy
IG5lZWRlZC4gIFNvIHJlbW92ZQ0KPiA+IGl0LiAgVGhpcyBlZmZlY3RpdmVseSByZXZlcnRzIGNv
bW1pdCBmMWIzZjY5NmEwODQgKCJkcm0vbXNtOiBEb24ndA0KPiA+IGJyZWFrIGV4Y2x1c2l2ZSBm
ZW5jZSBvcmRlcmluZyIpDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBSb2IgQ2xhcmsgPHJvYmRj
bGFya0BjaHJvbWl1bS5vcmc+DQo+DQo+IE9oLCB5ZXMgcGxlYXNlLiBJIGhhZCB0aGF0IG9uIG15
IHRvZG8gbGlzdCBmb3IgYWZ0ZXIgdGhlIGluaXRpYWwgcGF0Y2gNCj4gaGFkIGxhbmRlZCwgYnV0
IGNvdWxkbid0IGZpbmQgdGhlIHRpbWUgdG8gbG9vayBpbnRvIGl0IG9uY2UgbW9yZS4NCj4NCj4g
VGhlcmUgd2FzIGFub3RoZXIgY2FzZSB3aXRoIG9uZSBvZiB0aGUgb3RoZXIgQVJNIGRyaXZlcnMg
d2hpY2ggY291bGQgYmUNCj4gY2xlYW5lZCB1cCBub3csIGJ1dCBJIGNhbid0IGZpbmQgaXQgYW55
IG1vcmUgb2YgaGFuZC4NCj4NCj4gQW55d2F5IHRoaXMgcGF0Y2ggaGVyZSBpcyBBY2tlZC1ieTog
Q2hyaXN0aWFuIEvDtm5pZw0KPiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPi4NCg0KVGhhbmtz
Li4gSSBoYWQgYSBxdWljayBsb29rIGZvciB0aGUgb3RoZXIgZHJpdmVyIGJ1dCBjb3VsZG4ndCBz
cG90DQphbnl0aGluZywgc28gcGVyaGFwcyBpdCBoYXMgYWxyZWFkeSBiZWVuIGZpeGVkPw0KDQpC
UiwNCi1SDQoNCj4NCj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KPg0KPiA+IC0tLQ0KPiA+ICAg
ZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtX3N1Ym1pdC5jIHwgMyArLS0NCj4gPiAgIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc3VibWl0LmMgYi9kcml2ZXJzL2dw
dS9kcm0vbXNtL21zbV9nZW1fc3VibWl0LmMNCj4gPiBpbmRleCA1NTk5ZDkzZWMwZDIuLmNjNDhm
NzNhZGFkZiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc3Vi
bWl0LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc3VibWl0LmMNCj4g
PiBAQCAtMzM0LDggKzMzNCw3IEBAIHN0YXRpYyBpbnQgc3VibWl0X2ZlbmNlX3N5bmMoc3RydWN0
IG1zbV9nZW1fc3VibWl0ICpzdWJtaXQsIGJvb2wgbm9faW1wbGljaXQpDQo+ID4gICAgICAgICAg
ICAgICBpZiAocmV0KQ0KPiA+ICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Ow0KPiA+
DQo+ID4gLSAgICAgICAgICAgICAvKiBleGNsdXNpdmUgZmVuY2VzIG11c3QgYmUgb3JkZXJlZCAq
Lw0KPiA+IC0gICAgICAgICAgICAgaWYgKG5vX2ltcGxpY2l0ICYmICF3cml0ZSkNCj4gPiArICAg
ICAgICAgICAgIGlmIChub19pbXBsaWNpdCkNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgY29u
dGludWU7DQo+ID4NCj4gPiAgICAgICAgICAgICAgIHJldCA9IGRybV9zY2hlZF9qb2JfYWRkX2lt
cGxpY2l0X2RlcGVuZGVuY2llcygmc3VibWl0LT5iYXNlLA0KPg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
