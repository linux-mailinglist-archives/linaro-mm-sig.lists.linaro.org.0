Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F1FA702E9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Mar 2025 14:55:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7A0DA446BF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Mar 2025 13:55:57 +0000 (UTC)
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	by lists.linaro.org (Postfix) with ESMTPS id 911F23EBA8
	for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Mar 2025 13:55:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=GYcLUKM6;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.160.54 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-2c2c754af3cso2823684fac.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Mar 2025 06:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742910944; x=1743515744; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HfXW1tINyjybFH59i2/tceSOuMsWCGxf0dWvSOQSE9Q=;
        b=GYcLUKM6FydmmE8VVVuT2Zd6JythDHdH9P3ndKqZ1s8AV5/Jt4L9TCguITNEyUnmgt
         4agKTT5IJxBcmQ+GTivVU0zAeA3RN0gLJPp7Eht7sJrV7gljp3q+iWDp8pCQFlXU+5KZ
         ON2NMRW52zltVWFI+prI+GJCjzgrEKv4CQ1dKP7iZcybPqcPYJEXg/+lZ8QVN6yZ2rUz
         dzMqNluczLdo8029nTCa9eHV5693h8+VOEG58pc8s09mwrbqEx7gV22LBhPQDgPqkD4M
         nuNmm6VpNSz+loBU4T1giwp19mvDlK18AM50D2+wbDiiommq3lrdPlZHSOYbnONGp6u8
         JiTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742910944; x=1743515744;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HfXW1tINyjybFH59i2/tceSOuMsWCGxf0dWvSOQSE9Q=;
        b=aafwvt/KD5koRrwEraEQVGGaQLqCbw566OGNUTEwkS27uFCQVCPcijrv5SPEgk5pXw
         4zSs6S1YLmLEuzyLX66NxclChgMTqcI4ZCIZ5B+E0Jgv4oPs71oa+MKiqcN0/NZDOy/f
         aOM6iom7t4DlSDC78bNlFCZyLnOzdH1npfq2Vdmsb0KzthMOeR+EMqoTyZFqFjDcX7g6
         gQdbAHpaAbMV0Goq6mqAPiQvu6Kp/TGz6sFSXtVqhrzUxImsmInFGh8wB7B3T3JSFHz8
         FWzVQEVteCPVna6qxVqAsANsT7xMJA6+uaIHloDPVbcwCfhBiZzipzFvBUncyG9XKMjo
         UPMw==
X-Forwarded-Encrypted: i=1; AJvYcCXN2uNfApkJPQqr0oVq9zWhiMhWl0IV0htRnTdwtN5o547xWpEnFaUKLdqoPpMzpHOb41ALNPCwLMvRYkLM@lists.linaro.org
X-Gm-Message-State: AOJu0Yy2yp6GtlZmxdyJpoSOkLm1lKNtJeK8j5tE+LGmoWQ0uTX+t1iB
	5P4Ezc8BZRo32t5xZe75GKNhR+X5JF+TkMu/OmBTZNUwNoXgRGw2RhfNPsDtvERW+6t933rD5aW
	E+/Bj3KrnO6FCsl89Pw5OmLIpVgQyRViWvUbajwbL
X-Gm-Gg: ASbGncvrCHZzg+aOpmLWLwVqEzKpWQkxU+Z96VobBbGfLbeL7fuqaWP/vsMCWw0lAWG
	CaSrg/O/nHd5Pvyyvr+Rr0hy3p0GvddxJN3XopKsbQFZc3afq2tP+HrxVR7Rn//qU3Cs4qY0rpY
	D0z/d0wGqDC+tKctQC+M9wu089jCg=
X-Google-Smtp-Source: AGHT+IEwBPPwUVoRos1sVNedvDmYTl2oPMhg6qa7EWRFlVhYT0/1fPMMFcZLaxlXCLhryoazT9mEtzOs9FsiBb8tVPo=
X-Received: by 2002:a05:6870:f80b:b0:296:bbc8:4a82 with SMTP id
 586e51a60fabf-2c780495379mr12124356fac.27.1742910943713; Tue, 25 Mar 2025
 06:55:43 -0700 (PDT)
MIME-Version: 1.0
References: <20250305130634.1850178-1-jens.wiklander@linaro.org>
 <20250305130634.1850178-9-jens.wiklander@linaro.org> <Z-JWIyd8cKyXQR0H@sumit-X1>
In-Reply-To: <Z-JWIyd8cKyXQR0H@sumit-X1>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Tue, 25 Mar 2025 14:55:32 +0100
X-Gm-Features: AQ5f1Jp3D7eSeWP8gWeTN_I1pHWpPzOxKysZVMBSQkU1nox7ff2kFajLYyiQcek
Message-ID: <CAHUa44FXjG1hC9v18Yx1ENPX_Bc9sZW1Z2=+m6+KUsxPMvDE+w@mail.gmail.com>
To: Sumit Garg <sumit.garg@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 911F23EBA8
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.54:from];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.160.54:from];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,linaro.org:dkim,mail-oa1-f54.google.com:helo,mail-oa1-f54.google.com:rdns];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: QA2EVL7R7THUWGP7CNFJ7K5ZCTSJGPMH
X-Message-ID-Hash: QA2EVL7R7THUWGP7CNFJ7K5ZCTSJGPMH
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 08/10] optee: support restricted memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QA2EVL7R7THUWGP7CNFJ7K5ZCTSJGPMH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXIgMjUsIDIwMjUgYXQgODowN+KAr0FNIFN1bWl0IEdhcmcgPHN1bWl0LmdhcmdA
a2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IE9uIFdlZCwgTWFyIDA1LCAyMDI1IGF0IDAyOjA0OjE0
UE0gKzAxMDAsIEplbnMgV2lrbGFuZGVyIHdyb3RlOg0KPiA+IEFkZCBzdXBwb3J0IGluIHRoZSBP
UC1URUUgYmFja2VuZCBkcml2ZXIgZm9yIHJlc3RyaWN0ZWQgbWVtb3J5DQo+ID4gYWxsb2NhdGlv
bi4gVGhlIHN1cHBvcnQgaXMgbGltaXRlZCB0byBvbmx5IHRoZSBTTUMgQUJJIGFuZCBmb3Igc2Vj
dXJlDQo+ID4gdmlkZW8gYnVmZmVycy4NCj4gPg0KPiA+IE9QLVRFRSBpcyBwcm9iZWQgZm9yIHRo
ZSByYW5nZSBvZiByZXN0cmljdGVkIHBoeXNpY2FsIG1lbW9yeSBhbmQgYQ0KPiA+IG1lbW9yeSBw
b29sIGFsbG9jYXRvciBpcyBpbml0aWFsaXplZCBpZiBPUC1URUUgaGF2ZSBzdXBwb3J0IGZvciBz
dWNoDQo+ID4gbWVtb3J5Lg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogSmVucyBXaWtsYW5kZXIg
PGplbnMud2lrbGFuZGVyQGxpbmFyby5vcmc+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvdGVlL29w
dGVlL2NvcmUuYyAgICB8ICAxICsNCj4gPiAgZHJpdmVycy90ZWUvb3B0ZWUvc21jX2FiaS5jIHwg
NDQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLQ0KPiA+ICAyIGZpbGVzIGNo
YW5nZWQsIDQzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy90ZWUvb3B0ZWUvY29yZS5jIGIvZHJpdmVycy90ZWUvb3B0ZWUvY29yZS5j
DQo+ID4gaW5kZXggYzc1ZmRkYzgzNTc2Li5jN2ZkODA0MDQ4MGUgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy90ZWUvb3B0ZWUvY29yZS5jDQo+ID4gKysrIGIvZHJpdmVycy90ZWUvb3B0ZWUvY29y
ZS5jDQo+ID4gQEAgLTE4MSw2ICsxODEsNyBAQCB2b2lkIG9wdGVlX3JlbW92ZV9jb21tb24oc3Ry
dWN0IG9wdGVlICpvcHRlZSkNCj4gPiAgICAgICB0ZWVfZGV2aWNlX3VucmVnaXN0ZXIob3B0ZWUt
PnN1cHBfdGVlZGV2KTsNCj4gPiAgICAgICB0ZWVfZGV2aWNlX3VucmVnaXN0ZXIob3B0ZWUtPnRl
ZWRldik7DQo+ID4NCj4gPiArICAgICB0ZWVfZGV2aWNlX3VucmVnaXN0ZXJfYWxsX2RtYV9oZWFw
cyhvcHRlZS0+dGVlZGV2KTsNCj4gPiAgICAgICB0ZWVfc2htX3Bvb2xfZnJlZShvcHRlZS0+cG9v
bCk7DQo+ID4gICAgICAgb3B0ZWVfc3VwcF91bmluaXQoJm9wdGVlLT5zdXBwKTsNCj4gPiAgICAg
ICBtdXRleF9kZXN0cm95KCZvcHRlZS0+Y2FsbF9xdWV1ZS5tdXRleCk7DQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvdGVlL29wdGVlL3NtY19hYmkuYyBiL2RyaXZlcnMvdGVlL29wdGVlL3NtY19h
YmkuYw0KPiA+IGluZGV4IGNmZGFlMjY2NTQ4Yi4uYTE0ZmYwYjdkM2IzIDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvdGVlL29wdGVlL3NtY19hYmkuYw0KPiA+ICsrKyBiL2RyaXZlcnMvdGVlL29w
dGVlL3NtY19hYmkuYw0KPiA+IEBAIC0xNjIwLDYgKzE2MjAsNDEgQEAgc3RhdGljIGlubGluZSBp
bnQgb3B0ZWVfbG9hZF9mdyhzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LA0KPiA+ICB9DQo+
ID4gICNlbmRpZg0KPiA+DQo+ID4gK3N0YXRpYyBpbnQgb3B0ZWVfc2RwX3Bvb2xfaW5pdChzdHJ1
Y3Qgb3B0ZWUgKm9wdGVlKQ0KPiA+ICt7DQo+ID4gKyAgICAgZW51bSB0ZWVfZG1hX2hlYXBfaWQg
aGVhcF9pZCA9IFRFRV9ETUFfSEVBUF9TRUNVUkVfVklERU9fUExBWTsNCj4gPiArICAgICBzdHJ1
Y3QgdGVlX3JzdG1lbV9wb29sICpwb29sOw0KPiA+ICsgICAgIGludCByYzsNCj4gPiArDQo+ID4g
KyAgICAgaWYgKG9wdGVlLT5zbWMuc2VjX2NhcHMgJiBPUFRFRV9TTUNfU0VDX0NBUF9TRFApIHsN
Cj4NCj4gSXMgdGhpcyBTRFAgY2FwYWJpbGl0eSBhbiBBQkkgeWV0IHNpbmNlIHdlIGhhdmVuJ3Qg
c3VwcG9ydGVkIGl0IGluDQo+IHVwc3RyZWFtIGtlcm5lbD8gSWYgbm8gdGhlbiBjYW4gd2UgcmVu
YW1lIGl0IGFzDQo+IE9QVEVFX1NNQ19TRUNfQ0FQX1JTVE1FTT8NCg0KTm8gcHJvYmxlbS4gV2Ug
Y2FuIHJlbmFtZSBpdC4NCg0KPg0KPiA+ICsgICAgICAgICAgICAgdW5pb24gew0KPiA+ICsgICAg
ICAgICAgICAgICAgICAgICBzdHJ1Y3QgYXJtX3NtY2NjX3JlcyBzbWNjYzsNCj4gPiArICAgICAg
ICAgICAgICAgICAgICAgc3RydWN0IG9wdGVlX3NtY19nZXRfc2RwX2NvbmZpZ19yZXN1bHQgcmVz
dWx0Ow0KPiA+ICsgICAgICAgICAgICAgfSByZXM7DQo+ID4gKw0KPiA+ICsgICAgICAgICAgICAg
b3B0ZWUtPnNtYy5pbnZva2VfZm4oT1BURUVfU01DX0dFVF9TRFBfQ09ORklHLCAwLCAwLCAwLCAw
LCAwLCAwLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMCwgJnJlcy5z
bWNjYyk7DQo+ID4gKyAgICAgICAgICAgICBpZiAocmVzLnJlc3VsdC5zdGF0dXMgIT0gT1BURUVf
U01DX1JFVFVSTl9PSykgew0KPiA+ICsgICAgICAgICAgICAgICAgICAgICBwcl9lcnIoIlNlY3Vy
ZSBEYXRhIFBhdGggc2VydmljZSBub3QgYXZhaWxhYmxlXG4iKTsNCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgcmV0dXJuIDA7DQo+ID4gKyAgICAgICAgICAgICB9DQo+ID4gKw0KPiA+ICsgICAg
ICAgICAgICAgcG9vbCA9IHRlZV9yc3RtZW1fc3RhdGljX3Bvb2xfYWxsb2MocmVzLnJlc3VsdC5z
dGFydCwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHJlcy5yZXN1bHQuc2l6ZSk7DQo+ID4gKyAgICAgICAgICAgICBpZiAoSVNfRVJSKHBvb2wp
KQ0KPiA+ICsgICAgICAgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihwb29sKTsNCj4gPiAr
DQo+ID4gKyAgICAgICAgICAgICByYyA9IHRlZV9kZXZpY2VfcmVnaXN0ZXJfZG1hX2hlYXAob3B0
ZWUtPnRlZWRldiwgaGVhcF9pZCwgcG9vbCk7DQo+ID4gKyAgICAgICAgICAgICBpZiAocmMpDQo+
ID4gKyAgICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyOw0KPiA+ICsgICAgIH0NCj4gPiArDQo+
ID4gKyAgICAgcmV0dXJuIDA7DQo+ID4gK2VycjoNCj4gPiArICAgICBwb29sLT5vcHMtPmRlc3Ry
b3lfcG9vbChwb29sKTsNCj4gPiArICAgICByZXR1cm4gcmM7DQo+ID4gK30NCj4gPiArDQo+ID4g
IHN0YXRpYyBpbnQgb3B0ZWVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikNCj4g
PiAgew0KPiA+ICAgICAgIG9wdGVlX2ludm9rZV9mbiAqaW52b2tlX2ZuOw0KPiA+IEBAIC0xNzE1
LDcgKzE3NTAsNyBAQCBzdGF0aWMgaW50IG9wdGVlX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpDQo+ID4gICAgICAgb3B0ZWUgPSBremFsbG9jKHNpemVvZigqb3B0ZWUpLCBHRlBf
S0VSTkVMKTsNCj4gPiAgICAgICBpZiAoIW9wdGVlKSB7DQo+ID4gICAgICAgICAgICAgICByYyA9
IC1FTk9NRU07DQo+ID4gLSAgICAgICAgICAgICBnb3RvIGVycl9mcmVlX3Bvb2w7DQo+ID4gKyAg
ICAgICAgICAgICBnb3RvIGVycl9mcmVlX3NobV9wb29sOw0KPiA+ICAgICAgIH0NCj4gPg0KPiA+
ICAgICAgIG9wdGVlLT5vcHMgPSAmb3B0ZWVfb3BzOw0KPiA+IEBAIC0xNzg4LDYgKzE4MjMsMTAg
QEAgc3RhdGljIGludCBvcHRlZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0K
PiA+ICAgICAgICAgICAgICAgcHJfaW5mbygiQXN5bmNocm9ub3VzIG5vdGlmaWNhdGlvbnMgZW5h
YmxlZFxuIik7DQo+ID4gICAgICAgfQ0KPiA+DQo+ID4gKyAgICAgcmMgPSBvcHRlZV9zZHBfcG9v
bF9pbml0KG9wdGVlKTsNCj4NCj4gcy9vcHRlZV9zZHBfcG9vbF9pbml0L29wdGVlX3JzdG1lbV9w
b29sX2luaXQvDQoNCk9LDQoNCkNoZWVycywNCkplbnMNCg0KPg0KPiAtU3VtaXQNCj4NCj4gPiAr
ICAgICBpZiAocmMpDQo+ID4gKyAgICAgICAgICAgICBnb3RvIGVycl9ub3RpZl91bmluaXQ7DQo+
ID4gKw0KPiA+ICAgICAgIC8qDQo+ID4gICAgICAgICogRW5zdXJlIHRoYXQgdGhlcmUgYXJlIG5v
IHByZS1leGlzdGluZyBzaG0gb2JqZWN0cyBiZWZvcmUgZW5hYmxpbmcNCj4gPiAgICAgICAgKiB0
aGUgc2htIGNhY2hlIHNvIHRoYXQgdGhlcmUncyBubyBjaGFuY2Ugb2YgcmVjZWl2aW5nIGFuIGlu
dmFsaWQNCj4gPiBAQCAtMTgyMyw2ICsxODYyLDcgQEAgc3RhdGljIGludCBvcHRlZV9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KPiA+ICAgICAgICAgICAgICAgb3B0ZWVfZGlz
YWJsZV9zaG1fY2FjaGUob3B0ZWUpOw0KPiA+ICAgICAgIG9wdGVlX3NtY19ub3RpZl91bmluaXRf
aXJxKG9wdGVlKTsNCj4gPiAgICAgICBvcHRlZV91bnJlZ2lzdGVyX2RldmljZXMoKTsNCj4gPiAr
ICAgICB0ZWVfZGV2aWNlX3VucmVnaXN0ZXJfYWxsX2RtYV9oZWFwcyhvcHRlZS0+dGVlZGV2KTsN
Cj4gPiAgZXJyX25vdGlmX3VuaW5pdDoNCj4gPiAgICAgICBvcHRlZV9ub3RpZl91bmluaXQob3B0
ZWUpOw0KPiA+ICBlcnJfY2xvc2VfY3R4Og0KPiA+IEBAIC0xODM5LDcgKzE4NzksNyBAQCBzdGF0
aWMgaW50IG9wdGVlX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpDQo+ID4gICAg
ICAgdGVlX2RldmljZV91bnJlZ2lzdGVyKG9wdGVlLT50ZWVkZXYpOw0KPiA+ICBlcnJfZnJlZV9v
cHRlZToNCj4gPiAgICAgICBrZnJlZShvcHRlZSk7DQo+ID4gLWVycl9mcmVlX3Bvb2w6DQo+ID4g
K2Vycl9mcmVlX3NobV9wb29sOg0KPiA+ICAgICAgIHRlZV9zaG1fcG9vbF9mcmVlKHBvb2wpOw0K
PiA+ICAgICAgIGlmIChtZW1yZW1hcGVkX3NobSkNCj4gPiAgICAgICAgICAgICAgIG1lbXVubWFw
KG1lbXJlbWFwZWRfc2htKTsNCj4gPiAtLQ0KPiA+IDIuNDMuMA0KPiA+DQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
