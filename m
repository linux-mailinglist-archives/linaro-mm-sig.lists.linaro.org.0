Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B96086A9CA5
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 18:04:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 478073EF35
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 17:04:16 +0000 (UTC)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	by lists.linaro.org (Postfix) with ESMTPS id 8B69B3EEE3
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Mar 2023 17:03:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b="aOGeJ1/E";
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.167.169 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f169.google.com with SMTP id r40so2330122oiw.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Mar 2023 09:03:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677863037;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RZgVkTuvYky6LMx4NxO2XF22XxAb0kNEaLo11LroAxw=;
        b=aOGeJ1/EH6Ky1XYhaXU0TsJT+zNZhRX4i75gv50jJxzyk5yPx96UkyKWieOtkzVY3O
         hN8ODxeP1XYPMPf7SwNu4MHejDwj4TXGS127Jgd7gJ6noMxOwL8c8hhRkD0xL8fiHfqw
         4Yn6kAQgFlodlvPaDknI06aIebmEk6VzQYnaal/4mCm9/a6wm7kZvsf0YFFcluYALTgS
         hVPGHecfZ+8fmgoD1vBDQinhxKudGHCO+NGkek7Kz4ezJUXRP9zfBHKAKnrlnxw6V9nf
         BqbKqMBGuwUM5XnAs+Tpf8v1vFBCE2qnZK4SAiwcPR7VcM1Jpf7gTqK7EMOg7C15qs/9
         pOSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677863037;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RZgVkTuvYky6LMx4NxO2XF22XxAb0kNEaLo11LroAxw=;
        b=GnnLEK4qGTL4lVLa1nO9KCMMnEmpQ0R4R4NeLwsF5EYG/sE//fjNLOI96QpkRhrFlc
         uxJaU5/rCmBW+9jo46qI5rJu8Ry4pZuTko21YRIs+uXNeSknTo3qMIHybE3zz3TdJmHb
         v4TaOsocsB6IZFhRB9p84c3NRBMkGnNUZX0B4BIsh/B0RzOyby0duS7f0RwRSjvg+QOV
         F309nxcFc/tEczXamX25gLDsonsajxgrYqpj7wGloq3ukJrqbUn6ua0wNd/XhNfJJ5jy
         yHCIreHEcKs01G0k2/3GT64XVCvx/2EJdjcuE8vgPJNxmp2RCNIdiUzuFQipdPp2J0y6
         nEVg==
X-Gm-Message-State: AO0yUKVD8aPsYOBTN8AghPnTLEDDvejgm7wm8LcU8BkXLAN8I5foyN0o
	krJ06vFVQ30CIkM0nPn1WfcVPn2uMPno4SjwyOo=
X-Google-Smtp-Source: AK7set8d1sH5CmkMtOZYFe3qHdkCNvFUCNh5IhHFhDkZUbzvMmuXQitmVFSmai3PhsUO/xlXcU4veEoq/pdQ4K3B4B8=
X-Received: by 2002:a05:6808:913:b0:384:253:642d with SMTP id
 w19-20020a056808091300b003840253642dmr796082oih.3.1677863036851; Fri, 03 Mar
 2023 09:03:56 -0800 (PST)
MIME-Version: 1.0
References: <20230302235356.3148279-1-robdclark@gmail.com> <20230302235356.3148279-13-robdclark@gmail.com>
 <a5249009-0bec-61a5-4dd2-5728ee3017e3@linaro.org>
In-Reply-To: <a5249009-0bec-61a5-4dd2-5728ee3017e3@linaro.org>
From: Rob Clark <robdclark@gmail.com>
Date: Fri, 3 Mar 2023 09:03:45 -0800
Message-ID: <CAF6AEGtmQu-8LEdm68vXJJSpssXq2AShEdexqTGVW0WO5VmtDQ@mail.gmail.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8B69B3EEE3
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.169:from];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,quicinc.com,poorly.run,linaro.org,vger.kernel.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: GMWULJUKYG6NVXN4TGUMAIMQNVDKAMQU
X-Message-ID-Hash: GMWULJUKYG6NVXN4TGUMAIMQNVDKAMQU
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 12/15] drm/msm: Add deadline based boost support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GMWULJUKYG6NVXN4TGUMAIMQNVDKAMQU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBNYXIgMywgMjAyMyBhdCAyOjEw4oCvQU0gRG1pdHJ5IEJhcnlzaGtvdg0KPGRtaXRy
eS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4gd3JvdGU6DQo+DQo+IE9uIDAzLzAzLzIwMjMgMDE6NTMs
IFJvYiBDbGFyayB3cm90ZToNCj4gPiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1
bS5vcmc+DQo+ID4NCj4gPiBUcmFjayB0aGUgbmVhcmVzdCBkZWFkbGluZSBvbiBhIGZlbmNlIHRp
bWVsaW5lIGFuZCBzZXQgYSB0aW1lciB0byBleHBpcmUNCj4gPiBzaG9ydGx5IGJlZm9yZSB0byB0
cmlnZ2VyIGJvb3N0IGlmIHRoZSBmZW5jZSBoYXMgbm90IHlldCBiZWVuIHNpZ25hbGVkLg0KPiA+
DQo+ID4gdjI6IHJlYmFzZQ0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogUm9iIENsYXJrIDxyb2Jk
Y2xhcmtAY2hyb21pdW0ub3JnPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL21zbS9t
c21fZmVuY2UuYyB8IDc0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KPiA+ICAg
ZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZmVuY2UuaCB8IDIwICsrKysrKysrKw0KPiA+ICAgMiBm
aWxlcyBjaGFuZ2VkLCA5NCBpbnNlcnRpb25zKCspDQo+DQo+IFJldmlld2VkLWJ5OiBEbWl0cnkg
QmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+DQo+DQo+IEEgc21hbGwgcXVl
c3Rpb246IGRvIHdlIGJvb3N0IHRvIGZpdCBpbnRvIHRoZSBkZWFkbGluZSBvciB0byBtaXNzIHRo
ZQ0KPiBkZWFkbGluZSBmb3IgYXMgbGl0dGxlIGFzIHBvc3NpYmxlPyBJZiB0aGUgZm9ybWVyIGlz
IHRoZSBjYXNlLCB3ZSBtaWdodA0KPiBuZWVkIHRvIGFkanVzdCAzbXMgZGVwZW5kaW5nIG9uIHRo
ZSB3b3JrbG9hZC4NCg0KVGhlIGdvYWwgaXMgYXMgbXVjaCB0byBydW4gd2l0aCBoaWdoZXIgY2xv
Y2sgb24gdGhlIG5leHQgZnJhbWUgYXMgaXQNCmlzIHRvIG5vdCBtaXNzIGEgZGVhZGxpbmUuICBJ
ZS4gd2UgZG9uJ3Qgd2FudCBkZXZmcmVxIHRvIGNvbWUgdG8gdGhlDQpjb25jbHVzaW9uIHRoYXQg
cnVubmluZyBhdCA8NTAlIGNsa3MgaXMgYmVzdCBkdWUgdG8gdGhlIGFtb3VudCBvZg0KdXRpbGl6
YXRpb24gY2F1c2VkIGJ5IG1pc3NpbmcgZXZlciBvdGhlciB2YmxhbmsuDQoNCkJ1dCAzbXMgaXMg
bW9zdGx5IGp1c3QgInNlZW1zIGxpa2UgYSBnb29kIGNvbXByb21pc2UiIHZhbHVlLiAgSXQgbWln
aHQgY2hhbmdlLg0KDQpCUiwNCi1SDQoNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vbXNtL21zbV9mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZmVuY2UuYw0K
PiA+IGluZGV4IDU2NjQxNDA4ZWE3NC4uNTFiNDYxZjMyMTAzIDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9tc20vbXNtX2ZlbmNlLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
bXNtL21zbV9mZW5jZS5jDQo+ID4gQEAgLTgsNiArOCwzNSBAQA0KPiA+DQo+ID4gICAjaW5jbHVk
ZSAibXNtX2Rydi5oIg0KPiA+ICAgI2luY2x1ZGUgIm1zbV9mZW5jZS5oIg0KPiA+ICsjaW5jbHVk
ZSAibXNtX2dwdS5oIg0KPiA+ICsNCj4gPiArc3RhdGljIHN0cnVjdCBtc21fZ3B1ICpmY3R4Mmdw
dShzdHJ1Y3QgbXNtX2ZlbmNlX2NvbnRleHQgKmZjdHgpDQo+ID4gK3sNCj4gPiArICAgICBzdHJ1
Y3QgbXNtX2RybV9wcml2YXRlICpwcml2ID0gZmN0eC0+ZGV2LT5kZXZfcHJpdmF0ZTsNCj4gPiAr
ICAgICByZXR1cm4gcHJpdi0+Z3B1Ow0KPiA+ICt9DQo+ID4gKw0KPiA+ICtzdGF0aWMgZW51bSBo
cnRpbWVyX3Jlc3RhcnQgZGVhZGxpbmVfdGltZXIoc3RydWN0IGhydGltZXIgKnQpDQo+ID4gK3sN
Cj4gPiArICAgICBzdHJ1Y3QgbXNtX2ZlbmNlX2NvbnRleHQgKmZjdHggPSBjb250YWluZXJfb2Yo
dCwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgc3RydWN0IG1zbV9mZW5jZV9jb250ZXh0LCBk
ZWFkbGluZV90aW1lcik7DQo+ID4gKw0KPiA+ICsgICAgIGt0aHJlYWRfcXVldWVfd29yayhmY3R4
MmdwdShmY3R4KS0+d29ya2VyLCAmZmN0eC0+ZGVhZGxpbmVfd29yayk7DQo+ID4gKw0KPiA+ICsg
ICAgIHJldHVybiBIUlRJTUVSX05PUkVTVEFSVDsNCj4gPiArfQ0KPiA+ICsNCj4gPiArc3RhdGlj
IHZvaWQgZGVhZGxpbmVfd29yayhzdHJ1Y3Qga3RocmVhZF93b3JrICp3b3JrKQ0KPiA+ICt7DQo+
ID4gKyAgICAgc3RydWN0IG1zbV9mZW5jZV9jb250ZXh0ICpmY3R4ID0gY29udGFpbmVyX29mKHdv
cmssDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBtc21fZmVuY2VfY29udGV4dCwg
ZGVhZGxpbmVfd29yayk7DQo+ID4gKw0KPiA+ICsgICAgIC8qIElmIGRlYWRsaW5lIGZlbmNlIGhh
cyBhbHJlYWR5IHBhc3NlZCwgbm90aGluZyB0byBkbzogKi8NCj4gPiArICAgICBpZiAobXNtX2Zl
bmNlX2NvbXBsZXRlZChmY3R4LCBmY3R4LT5uZXh0X2RlYWRsaW5lX2ZlbmNlKSkNCj4gPiArICAg
ICAgICAgICAgIHJldHVybjsNCj4gPiArDQo+ID4gKyAgICAgbXNtX2RldmZyZXFfYm9vc3QoZmN0
eDJncHUoZmN0eCksIDIpOw0KPiA+ICt9DQo+ID4NCj4gPg0KPiA+ICAgc3RydWN0IG1zbV9mZW5j
ZV9jb250ZXh0ICoNCj4gPiBAQCAtMzYsNiArNjUsMTMgQEAgbXNtX2ZlbmNlX2NvbnRleHRfYWxs
b2Moc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9sYXRpbGUgdWludDMyX3QgKmZlbmNlcHRyLA0K
PiA+ICAgICAgIGZjdHgtPmNvbXBsZXRlZF9mZW5jZSA9IGZjdHgtPmxhc3RfZmVuY2U7DQo+ID4g
ICAgICAgKmZjdHgtPmZlbmNlcHRyID0gZmN0eC0+bGFzdF9mZW5jZTsNCj4gPg0KPiA+ICsgICAg
IGhydGltZXJfaW5pdCgmZmN0eC0+ZGVhZGxpbmVfdGltZXIsIENMT0NLX01PTk9UT05JQywgSFJU
SU1FUl9NT0RFX0FCUyk7DQo+ID4gKyAgICAgZmN0eC0+ZGVhZGxpbmVfdGltZXIuZnVuY3Rpb24g
PSBkZWFkbGluZV90aW1lcjsNCj4gPiArDQo+ID4gKyAgICAga3RocmVhZF9pbml0X3dvcmsoJmZj
dHgtPmRlYWRsaW5lX3dvcmssIGRlYWRsaW5lX3dvcmspOw0KPiA+ICsNCj4gPiArICAgICBmY3R4
LT5uZXh0X2RlYWRsaW5lID0ga3RpbWVfZ2V0KCk7DQo+ID4gKw0KPiA+ICAgICAgIHJldHVybiBm
Y3R4Ow0KPiA+ICAgfQ0KPiA+DQo+ID4gQEAgLTYyLDYgKzk4LDggQEAgdm9pZCBtc21fdXBkYXRl
X2ZlbmNlKHN0cnVjdCBtc21fZmVuY2VfY29udGV4dCAqZmN0eCwgdWludDMyX3QgZmVuY2UpDQo+
ID4gICAgICAgc3Bpbl9sb2NrX2lycXNhdmUoJmZjdHgtPnNwaW5sb2NrLCBmbGFncyk7DQo+ID4g
ICAgICAgaWYgKGZlbmNlX2FmdGVyKGZlbmNlLCBmY3R4LT5jb21wbGV0ZWRfZmVuY2UpKQ0KPiA+
ICAgICAgICAgICAgICAgZmN0eC0+Y29tcGxldGVkX2ZlbmNlID0gZmVuY2U7DQo+ID4gKyAgICAg
aWYgKG1zbV9mZW5jZV9jb21wbGV0ZWQoZmN0eCwgZmN0eC0+bmV4dF9kZWFkbGluZV9mZW5jZSkp
DQo+ID4gKyAgICAgICAgICAgICBocnRpbWVyX2NhbmNlbCgmZmN0eC0+ZGVhZGxpbmVfdGltZXIp
Ow0KPiA+ICAgICAgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmZjdHgtPnNwaW5sb2NrLCBmbGFn
cyk7DQo+ID4gICB9DQo+ID4NCj4gPiBAQCAtOTIsMTAgKzEzMCw0NiBAQCBzdGF0aWMgYm9vbCBt
c21fZmVuY2Vfc2lnbmFsZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+ID4gICAgICAgcmV0
dXJuIG1zbV9mZW5jZV9jb21wbGV0ZWQoZi0+ZmN0eCwgZi0+YmFzZS5zZXFubyk7DQo+ID4gICB9
DQo+ID4NCj4gPiArc3RhdGljIHZvaWQgbXNtX2ZlbmNlX3NldF9kZWFkbGluZShzdHJ1Y3QgZG1h
X2ZlbmNlICpmZW5jZSwga3RpbWVfdCBkZWFkbGluZSkNCj4gPiArew0KPiA+ICsgICAgIHN0cnVj
dCBtc21fZmVuY2UgKmYgPSB0b19tc21fZmVuY2UoZmVuY2UpOw0KPiA+ICsgICAgIHN0cnVjdCBt
c21fZmVuY2VfY29udGV4dCAqZmN0eCA9IGYtPmZjdHg7DQo+ID4gKyAgICAgdW5zaWduZWQgbG9u
ZyBmbGFnczsNCj4gPiArICAgICBrdGltZV90IG5vdzsNCj4gPiArDQo+ID4gKyAgICAgc3Bpbl9s
b2NrX2lycXNhdmUoJmZjdHgtPnNwaW5sb2NrLCBmbGFncyk7DQo+ID4gKyAgICAgbm93ID0ga3Rp
bWVfZ2V0KCk7DQo+ID4gKw0KPiA+ICsgICAgIGlmIChrdGltZV9hZnRlcihub3csIGZjdHgtPm5l
eHRfZGVhZGxpbmUpIHx8DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGt0aW1lX2JlZm9yZShk
ZWFkbGluZSwgZmN0eC0+bmV4dF9kZWFkbGluZSkpIHsNCj4gPiArICAgICAgICAgICAgIGZjdHgt
Pm5leHRfZGVhZGxpbmUgPSBkZWFkbGluZTsNCj4gPiArICAgICAgICAgICAgIGZjdHgtPm5leHRf
ZGVhZGxpbmVfZmVuY2UgPQ0KPiA+ICsgICAgICAgICAgICAgICAgICAgICBtYXgoZmN0eC0+bmV4
dF9kZWFkbGluZV9mZW5jZSwgKHVpbnQzMl90KWZlbmNlLT5zZXFubyk7DQo+ID4gKw0KPiA+ICsg
ICAgICAgICAgICAgLyoNCj4gPiArICAgICAgICAgICAgICAqIFNldCB0aW1lciB0byB0cmlnZ2Vy
IGJvb3N0IDNtcyBiZWZvcmUgZGVhZGxpbmUsIG9yDQo+ID4gKyAgICAgICAgICAgICAgKiBpZiB3
ZSBhcmUgYWxyZWFkeSBsZXNzIHRoYW4gM21zIGJlZm9yZSB0aGUgZGVhZGxpbmUNCj4gPiArICAg
ICAgICAgICAgICAqIHNjaGVkdWxlIGJvb3N0IHdvcmsgaW1tZWRpYXRlbHkuDQo+ID4gKyAgICAg
ICAgICAgICAgKi8NCj4gPiArICAgICAgICAgICAgIGRlYWRsaW5lID0ga3RpbWVfc3ViKGRlYWRs
aW5lLCBtc190b19rdGltZSgzKSk7DQo+ID4gKw0KPiA+ICsgICAgICAgICAgICAgaWYgKGt0aW1l
X2FmdGVyKG5vdywgZGVhZGxpbmUpKSB7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGt0aHJl
YWRfcXVldWVfd29yayhmY3R4MmdwdShmY3R4KS0+d29ya2VyLA0KPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgJmZjdHgtPmRlYWRsaW5lX3dvcmspOw0KPiA+ICsgICAg
ICAgICAgICAgfSBlbHNlIHsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgaHJ0aW1lcl9zdGFy
dCgmZmN0eC0+ZGVhZGxpbmVfdGltZXIsIGRlYWRsaW5lLA0KPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgSFJUSU1FUl9NT0RFX0FCUyk7DQo+ID4gKyAgICAgICAgICAg
ICB9DQo+ID4gKyAgICAgfQ0KPiA+ICsNCj4gPiArICAgICBzcGluX3VubG9ja19pcnFyZXN0b3Jl
KCZmY3R4LT5zcGlubG9jaywgZmxhZ3MpOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICAgc3RhdGljIGNv
bnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIG1zbV9mZW5jZV9vcHMgPSB7DQo+ID4gICAgICAgLmdl
dF9kcml2ZXJfbmFtZSA9IG1zbV9mZW5jZV9nZXRfZHJpdmVyX25hbWUsDQo+ID4gICAgICAgLmdl
dF90aW1lbGluZV9uYW1lID0gbXNtX2ZlbmNlX2dldF90aW1lbGluZV9uYW1lLA0KPiA+ICAgICAg
IC5zaWduYWxlZCA9IG1zbV9mZW5jZV9zaWduYWxlZCwNCj4gPiArICAgICAuc2V0X2RlYWRsaW5l
ID0gbXNtX2ZlbmNlX3NldF9kZWFkbGluZSwNCj4gPiAgIH07DQo+ID4NCj4gPiAgIHN0cnVjdCBk
bWFfZmVuY2UgKg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9mZW5j
ZS5oIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZmVuY2UuaA0KPiA+IGluZGV4IDdmMTc5OGM1
NGNkMS4uY2RhZWJmYjk0ZjVjIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tc20v
bXNtX2ZlbmNlLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9mZW5jZS5oDQo+
ID4gQEAgLTUyLDYgKzUyLDI2IEBAIHN0cnVjdCBtc21fZmVuY2VfY29udGV4dCB7DQo+ID4gICAg
ICAgdm9sYXRpbGUgdWludDMyX3QgKmZlbmNlcHRyOw0KPiA+DQo+ID4gICAgICAgc3BpbmxvY2tf
dCBzcGlubG9jazsNCj4gPiArDQo+ID4gKyAgICAgLyoNCj4gPiArICAgICAgKiBUT0RPIHRoaXMg
ZG9lc24ndCByZWFsbHkgZGVhbCB3aXRoIG11bHRpcGxlIGRlYWRsaW5lcywgbGlrZQ0KPiA+ICsg
ICAgICAqIGlmIHVzZXJzcGFjZSBnb3QgbXVsdGlwbGUgZnJhbWVzIGFoZWFkLi4gT1RPSCBhdG9t
aWMgdXBkYXRlcw0KPiA+ICsgICAgICAqIGRvbid0IHF1ZXVlLCBzbyBtYXliZSB0aGF0IGlzIG9r
DQo+ID4gKyAgICAgICovDQo+ID4gKw0KPiA+ICsgICAgIC8qKiBuZXh0X2RlYWRsaW5lOiBUaW1l
IG9mIG5leHQgZGVhZGxpbmUgKi8NCj4gPiArICAgICBrdGltZV90IG5leHRfZGVhZGxpbmU7DQo+
ID4gKw0KPiA+ICsgICAgIC8qKg0KPiA+ICsgICAgICAqIG5leHRfZGVhZGxpbmVfZmVuY2U6DQo+
ID4gKyAgICAgICoNCj4gPiArICAgICAgKiBGZW5jZSB2YWx1ZSBmb3IgbmV4dCBwZW5kaW5nIGRl
YWRsaW5lLiAgVGhlIGRlYWRsaW5lIHRpbWVyIGlzDQo+ID4gKyAgICAgICogY2FuY2VsZWQgd2hl
biB0aGlzIGZlbmNlIGlzIHNpZ25hbGVkLg0KPiA+ICsgICAgICAqLw0KPiA+ICsgICAgIHVpbnQz
Ml90IG5leHRfZGVhZGxpbmVfZmVuY2U7DQo+ID4gKw0KPiA+ICsgICAgIHN0cnVjdCBocnRpbWVy
IGRlYWRsaW5lX3RpbWVyOw0KPiA+ICsgICAgIHN0cnVjdCBrdGhyZWFkX3dvcmsgZGVhZGxpbmVf
d29yazsNCj4gPiAgIH07DQo+ID4NCj4gPiAgIHN0cnVjdCBtc21fZmVuY2VfY29udGV4dCAqIG1z
bV9mZW5jZV9jb250ZXh0X2FsbG9jKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsDQo+DQo+IC0tDQo+
IFdpdGggYmVzdCB3aXNoZXMNCj4gRG1pdHJ5DQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
