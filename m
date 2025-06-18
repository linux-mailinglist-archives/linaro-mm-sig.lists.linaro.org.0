Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 133EAADE42B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Jun 2025 09:03:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 085A344AF7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Jun 2025 07:03:25 +0000 (UTC)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	by lists.linaro.org (Postfix) with ESMTPS id 8E7EA3E94F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Jun 2025 07:03:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=ZLopx9tR;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.210.48 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-73a4c557d47so1769602a34.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Jun 2025 00:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750230192; x=1750834992; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r8SFTx5dPQSfu8ZL7Jn6th2YUqqrMFvLWLfJm2Kbj0c=;
        b=ZLopx9tRUDSjwWEV2ALz12O7wZ4Laiel1AySokBzskyDTVcqtP7sx2017LSX3n1/VS
         /WTJuyIKdTWTin2XAiLKVpYi5NSKB6dSaMEYIHginb1zJlcL1cVIubkp92CC8ufgLdXn
         NXaQMDG1sq0IUGl+agIP/R+5J7TrB+4iEUGFWAVoxjsdy7fwgVxLr0cSAmL/NjifyLAa
         cxcjsS2zC70ezi3GdZhGwvcqtwWQXPb41Kniv+dI7M3gxvlhQWWntE6oswnW0UCqHfdg
         BcUescW+GBJ95xadpUHrfZKXnHsT/cV5KVmMGBhRbWEllQUWV4WN52Fn5d47Jb7LVT6u
         lZKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750230192; x=1750834992;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r8SFTx5dPQSfu8ZL7Jn6th2YUqqrMFvLWLfJm2Kbj0c=;
        b=QDxlfBtSQTLLf2/3t6qypvR90aDSO8HAsUL2jbvTSQwC1NqtKT73l/oJ1UZjUezLkU
         XCSnHzKN6QZyg/5AdE/9D/HZCOuC/r9w6ekqT8vXRs4w4BRmjZCbaozJIsMo1ZhQxLI0
         wnFCfu/qioSp/qc0YZSwkcukNZ+Ppwc9GuNSUB1JiIeXRiXSMmWWUhlc262MkCy/4XnX
         ErX+FZ0XC/CDHqIuY899GWf3p/EhFhPUebQ38GQ3fWEATyMh5zvrrOxlJpw08wSZD2ke
         DwdI890F4gOnIG841RbF3C829v3Lz/VdoRcIzZIBsvQMHoXDyFuL4Bdot6fVsDDLoV9M
         1YBA==
X-Forwarded-Encrypted: i=1; AJvYcCVC3ZrVBZUXDAuuAuKfW7pdDlMtxOdnqrmm/HrTTdWb3aDjNAjZBPbCp2eVaT03OhVMkeh6gSDg6kzfNQaG@lists.linaro.org
X-Gm-Message-State: AOJu0YwVh1R5fzuN+4CcwAvGlrhl7vUgKy3SByWZLchEyY3P1x2hwWkD
	W5dFLzy1FQ0XwFASqKV45Ocs/p9AgF7H0ozzu3Z2tiSCL/MBJ/bCLm/eYX2QMPDWKHTwAHRTivI
	1dyeh9WM0iYRNnLZAS88EbLu1U7cKX5hi9d6nYI70jVfc
X-Gm-Gg: ASbGncs/qORuBJaNEcERSu1zqFxfbPsfmctUIeRY2k5jWCg6hSUeTuoSfEtXjWFVeL8
	Vy+A+FV0scjMpCbfulNH5lbukGgwnUy0vHUqWLh5n6qa5iFqZHu4YrIYfjwJ++H8yU5l6BA9/vv
	miCvGd+VcnhDJ+3+hDj3aDXnyL2ZjmuEraDkSSpj9mGVo=
X-Google-Smtp-Source: AGHT+IEYIeVC/jTVYCSxf/dGhqeDr1KHxYiJwAAX/5hmURj3RcHrh9D5I5KutnxKn6tUumkHdJ/1wa42+SytUsf+26I=
X-Received: by 2002:a05:6830:40c4:b0:72b:946e:ccc7 with SMTP id
 46e09a7af769-73a36091cbemr11291390a34.0.1750230191671; Wed, 18 Jun 2025
 00:03:11 -0700 (PDT)
MIME-Version: 1.0
References: <20250610131600.2972232-1-jens.wiklander@linaro.org>
 <20250610131600.2972232-7-jens.wiklander@linaro.org> <aFFSWDiVsxA1CbCX@sumit-X1>
In-Reply-To: <aFFSWDiVsxA1CbCX@sumit-X1>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Wed, 18 Jun 2025 09:03:00 +0200
X-Gm-Features: AX0GCFvrA5yXpBPMnqH5JcYKZyhNKjMM65-tKAnroIXskFJp4M6WI4XH2u_9JeE
Message-ID: <CAHUa44HP5EbURyLCmawMLc0d5jz1oTQZ53V1w2h0-ngUC2hbEw@mail.gmail.com>
To: Sumit Garg <sumit.garg@kernel.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.48:from];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Queue-Id: 8E7EA3E94F
X-Spamd-Bar: --
Message-ID-Hash: INW5TSC6ICV7RDJQCY6SUF3E5V66LL3L
X-Message-ID-Hash: INW5TSC6ICV7RDJQCY6SUF3E5V66LL3L
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, robin.murphy@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 6/9] tee: add tee_shm_alloc_dma_mem()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/INW5TSC6ICV7RDJQCY6SUF3E5V66LL3L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBKdW4gMTcsIDIwMjUgYXQgMTozMuKAr1BNIFN1bWl0IEdhcmcgPHN1bWl0LmdhcmdA
a2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IE9uIFR1ZSwgSnVuIDEwLCAyMDI1IGF0IDAzOjEzOjUw
UE0gKzAyMDAsIEplbnMgV2lrbGFuZGVyIHdyb3RlOg0KPiA+IEFkZCB0ZWVfc2htX2FsbG9jX2Rt
YV9tZW0oKSB0byBhbGxvY2F0ZSBETUEgbWVtb3J5LiBUaGUgbWVtb3J5IGlzDQo+ID4gcmVwcmVz
ZW50ZWQgYnkgYSB0ZWVfc2htIG9iamVjdCB1c2luZyB0aGUgbmV3IGZsYWcgVEVFX1NITV9ETUFf
TUVNIHRvDQo+ID4gaWRlbnRpZnkgaXQgYXMgRE1BIG1lbW9yeS4gVGhlIGFsbG9jYXRlZCBtZW1v
cnkgd2lsbCBsYXRlciBiZSBsZW50IHRvDQo+ID4gdGhlIFRFRSB0byBiZSB1c2VkIGFzIHByb3Rl
Y3RlZCBtZW1vcnkuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKZW5zIFdpa2xhbmRlciA8amVu
cy53aWtsYW5kZXJAbGluYXJvLm9yZz4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy90ZWUvdGVlX3No
bS5jICAgIHwgODUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLQ0KPiA+
ICBpbmNsdWRlL2xpbnV4L3RlZV9jb3JlLmggfCAgNSArKysNCj4gPiAgMiBmaWxlcyBjaGFuZ2Vk
LCA4OCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvdGVlL3RlZV9zaG0uYyBiL2RyaXZlcnMvdGVlL3RlZV9zaG0uYw0KPiA+IGluZGV4
IGU2MzA5NWU4NDY0NC4uNjBiMGYzOTMyY2VlIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvdGVl
L3RlZV9zaG0uYw0KPiA+ICsrKyBiL2RyaXZlcnMvdGVlL3RlZV9zaG0uYw0KPiA+IEBAIC01LDYg
KzUsOCBAQA0KPiA+ICAjaW5jbHVkZSA8bGludXgvYW5vbl9pbm9kZXMuaD4NCj4gPiAgI2luY2x1
ZGUgPGxpbnV4L2RldmljZS5oPg0KPiA+ICAjaW5jbHVkZSA8bGludXgvZG1hLWJ1Zi5oPg0KPiA+
ICsjaW5jbHVkZSA8bGludXgvZG1hLW1hcHBpbmcuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L2hp
Z2htZW0uaD4NCj4gPiAgI2luY2x1ZGUgPGxpbnV4L2lkci5oPg0KPiA+ICAjaW5jbHVkZSA8bGlu
dXgvaW8uaD4NCj4gPiAgI2luY2x1ZGUgPGxpbnV4L21tLmg+DQo+ID4gQEAgLTEzLDkgKzE1LDE0
IEBADQo+ID4gICNpbmNsdWRlIDxsaW51eC90ZWVfY29yZS5oPg0KPiA+ICAjaW5jbHVkZSA8bGlu
dXgvdWFjY2Vzcy5oPg0KPiA+ICAjaW5jbHVkZSA8bGludXgvdWlvLmg+DQo+ID4gLSNpbmNsdWRl
IDxsaW51eC9oaWdobWVtLmg+DQo+ID4gICNpbmNsdWRlICJ0ZWVfcHJpdmF0ZS5oIg0KPiA+DQo+
ID4gK3N0cnVjdCB0ZWVfc2htX2RtYV9tZW0gew0KPiA+ICsgICAgIHN0cnVjdCB0ZWVfc2htIHNo
bTsNCj4gPiArICAgICBkbWFfYWRkcl90IGRtYV9hZGRyOw0KPiA+ICsgICAgIHN0cnVjdCBwYWdl
ICpwYWdlOw0KPiA+ICt9Ow0KPiA+ICsNCj4gPiAgc3RhdGljIHZvaWQgc2htX3B1dF9rZXJuZWxf
cGFnZXMoc3RydWN0IHBhZ2UgKipwYWdlcywgc2l6ZV90IHBhZ2VfY291bnQpDQo+ID4gIHsNCj4g
PiAgICAgICBzaXplX3QgbjsNCj4gPiBAQCAtNDgsNyArNTUsMTYgQEAgc3RhdGljIHZvaWQgdGVl
X3NobV9yZWxlYXNlKHN0cnVjdCB0ZWVfZGV2aWNlICp0ZWVkZXYsIHN0cnVjdCB0ZWVfc2htICpz
aG0pDQo+ID4gIHsNCj4gPiAgICAgICB2b2lkICpwID0gc2htOw0KPiA+DQo+ID4gLSAgICAgaWYg
KHNobS0+ZmxhZ3MgJiBURUVfU0hNX0RNQV9CVUYpIHsNCj4gPiArICAgICBpZiAoc2htLT5mbGFn
cyAmIFRFRV9TSE1fRE1BX01FTSkgew0KPiA+ICsjaWYgSVNfRU5BQkxFRChDT05GSUdfVEVFX0RN
QUJVRl9IRUFQUykNCj4NCj4gbml0OiB0aGlzIGNvbmZpZyBjaGVjayBjYW4gYmUgbWVyZ2VkIGlu
dG8gdGhlIGFib3ZlIGlmIGNoZWNrLg0KDQpObywgYmVjYXVzZSBkbWFfZnJlZV9wYWdlcygpIGlz
IG9ubHkgZGVmaW5lZCBpZg0KQ09ORklHX1RFRV9ETUFCVUZfSEVBUFMgaXMgZW5hYmxlZC4NCg0K
Pg0KPiA+ICsgICAgICAgICAgICAgc3RydWN0IHRlZV9zaG1fZG1hX21lbSAqZG1hX21lbTsNCj4g
PiArDQo+ID4gKyAgICAgICAgICAgICBkbWFfbWVtID0gY29udGFpbmVyX29mKHNobSwgc3RydWN0
IHRlZV9zaG1fZG1hX21lbSwgc2htKTsNCj4gPiArICAgICAgICAgICAgIHAgPSBkbWFfbWVtOw0K
PiA+ICsgICAgICAgICAgICAgZG1hX2ZyZWVfcGFnZXMoJnRlZWRldi0+ZGV2LCBzaG0tPnNpemUs
IGRtYV9tZW0tPnBhZ2UsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICBkbWFfbWVt
LT5kbWFfYWRkciwgRE1BX0JJRElSRUNUSU9OQUwpOw0KPiA+ICsjZW5kaWYNCj4gPiArICAgICB9
IGVsc2UgaWYgKHNobS0+ZmxhZ3MgJiBURUVfU0hNX0RNQV9CVUYpIHsNCj4NCj4gRG8gd2UgbmVl
ZCBhIHNpbWlsYXIgY29uZmlnIGNoZWNrIGZvciB0aGlzIGZsYWcgdG9vPw0KDQpObywgYmVjYXVz
ZSBETUFfU0hBUkVEX0JVRkZFUiBpcyBzZWxlY3RlZCwgc28gdGhlIGRtYV9idWYgZnVuY3Rpb25z
IGFyZSBkZWZpbmVkLg0KDQpDaGVlcnMsDQpKZW5zDQoNCg0KPg0KPiBXaXRoIHRoZXNlIGFkZHJl
c3NlZCwgZmVlbCBmcmVlIHRvIGFkZDoNCj4NCj4gUmV2aWV3ZWQtYnk6IFN1bWl0IEdhcmcgPHN1
bWl0LmdhcmdAb3NzLnF1YWxjb21tLmNvbT4NCj4NCj4gLVN1bWl0DQo+DQo+ID4gICAgICAgICAg
ICAgICBzdHJ1Y3QgdGVlX3NobV9kbWFidWZfcmVmICpyZWY7DQo+ID4NCj4gPiAgICAgICAgICAg
ICAgIHJlZiA9IGNvbnRhaW5lcl9vZihzaG0sIHN0cnVjdCB0ZWVfc2htX2RtYWJ1Zl9yZWYsIHNo
bSk7DQo+ID4gQEAgLTMwMyw2ICszMTksNzEgQEAgc3RydWN0IHRlZV9zaG0gKnRlZV9zaG1fYWxs
b2NfcHJpdl9idWYoc3RydWN0IHRlZV9jb250ZXh0ICpjdHgsIHNpemVfdCBzaXplKQ0KPiA+ICB9
DQo+ID4gIEVYUE9SVF9TWU1CT0xfR1BMKHRlZV9zaG1fYWxsb2NfcHJpdl9idWYpOw0KPiA+DQo+
ID4gKyNpZiBJU19FTkFCTEVEKENPTkZJR19URUVfRE1BQlVGX0hFQVBTKQ0KPiA+ICsvKioNCj4g
PiArICogdGVlX3NobV9hbGxvY19kbWFfbWVtKCkgLSBBbGxvY2F0ZSBETUEgbWVtb3J5IGFzIHNo
YXJlZCBtZW1vcnkgb2JqZWN0DQo+ID4gKyAqIEBjdHg6ICAgICBDb250ZXh0IHRoYXQgYWxsb2Nh
dGVzIHRoZSBzaGFyZWQgbWVtb3J5DQo+ID4gKyAqIEBwYWdlX2NvdW50OiAgICAgIE51bWJlciBv
ZiBwYWdlcw0KPiA+ICsgKg0KPiA+ICsgKiBUaGUgYWxsb2NhdGVkIG1lbW9yeSBpcyBleHBlY3Rl
ZCB0byBiZSBsZW50IChtYWRlIGluYWNjZXNzaWJsZSB0byB0aGUNCj4gPiArICoga2VybmVsKSB0
byB0aGUgVEVFIHdoaWxlIGl0J3MgdXNlZCBhbmQgcmV0dXJuZWQgKGFjY2Vzc2libGUgdG8gdGhl
DQo+ID4gKyAqIGtlcm5lbCBhZ2FpbikgYmVmb3JlIGl0J3MgZnJlZWQuDQo+ID4gKyAqDQo+ID4g
KyAqIFRoaXMgZnVuY3Rpb24gc2hvdWxkIG5vcm1hbGx5IG9ubHkgYmUgdXNlZCBpbnRlcm5hbGx5
IGluIHRoZSBURUUNCj4gPiArICogZHJpdmVycy4NCj4gPiArICoNCj4gPiArICogQHJldHVybnMg
YSBwb2ludGVyIHRvICdzdHJ1Y3QgdGVlX3NobScNCj4gPiArICovDQo+ID4gK3N0cnVjdCB0ZWVf
c2htICp0ZWVfc2htX2FsbG9jX2RtYV9tZW0oc3RydWN0IHRlZV9jb250ZXh0ICpjdHgsDQo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2l6ZV90IHBhZ2VfY291bnQpDQo+
ID4gK3sNCj4gPiArICAgICBzdHJ1Y3QgdGVlX2RldmljZSAqdGVlZGV2ID0gY3R4LT50ZWVkZXY7
DQo+ID4gKyAgICAgc3RydWN0IHRlZV9zaG1fZG1hX21lbSAqZG1hX21lbTsNCj4gPiArICAgICBk
bWFfYWRkcl90IGRtYV9hZGRyOw0KPiA+ICsgICAgIHN0cnVjdCBwYWdlICpwYWdlOw0KPiA+ICsN
Cj4gPiArICAgICBpZiAoIXRlZV9kZXZpY2VfZ2V0KHRlZWRldikpDQo+ID4gKyAgICAgICAgICAg
ICByZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsNCj4gPiArDQo+ID4gKyAgICAgcGFnZSA9IGRtYV9h
bGxvY19wYWdlcygmdGVlZGV2LT5kZXYsIHBhZ2VfY291bnQgKiBQQUdFX1NJWkUsDQo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAmZG1hX2FkZHIsIERNQV9CSURJUkVDVElPTkFMLCBH
RlBfS0VSTkVMKTsNCj4gPiArICAgICBpZiAoIXBhZ2UpDQo+ID4gKyAgICAgICAgICAgICBnb3Rv
IGVycl9wdXRfdGVlZGV2Ow0KPiA+ICsNCj4gPiArICAgICBkbWFfbWVtID0ga3phbGxvYyhzaXpl
b2YoKmRtYV9tZW0pLCBHRlBfS0VSTkVMKTsNCj4gPiArICAgICBpZiAoIWRtYV9tZW0pDQo+ID4g
KyAgICAgICAgICAgICBnb3RvIGVycl9mcmVlX3BhZ2VzOw0KPiA+ICsNCj4gPiArICAgICByZWZj
b3VudF9zZXQoJmRtYV9tZW0tPnNobS5yZWZjb3VudCwgMSk7DQo+ID4gKyAgICAgZG1hX21lbS0+
c2htLmN0eCA9IGN0eDsNCj4gPiArICAgICBkbWFfbWVtLT5zaG0ucGFkZHIgPSBwYWdlX3RvX3Bo
eXMocGFnZSk7DQo+ID4gKyAgICAgZG1hX21lbS0+ZG1hX2FkZHIgPSBkbWFfYWRkcjsNCj4gPiAr
ICAgICBkbWFfbWVtLT5wYWdlID0gcGFnZTsNCj4gPiArICAgICBkbWFfbWVtLT5zaG0uc2l6ZSA9
IHBhZ2VfY291bnQgKiBQQUdFX1NJWkU7DQo+ID4gKyAgICAgZG1hX21lbS0+c2htLmZsYWdzID0g
VEVFX1NITV9ETUFfTUVNOw0KPiA+ICsNCj4gPiArICAgICB0ZWVkZXZfY3R4X2dldChjdHgpOw0K
PiA+ICsNCj4gPiArICAgICByZXR1cm4gJmRtYV9tZW0tPnNobTsNCj4gPiArDQo+ID4gK2Vycl9m
cmVlX3BhZ2VzOg0KPiA+ICsgICAgIGRtYV9mcmVlX3BhZ2VzKCZ0ZWVkZXYtPmRldiwgcGFnZV9j
b3VudCAqIFBBR0VfU0laRSwgcGFnZSwgZG1hX2FkZHIsDQo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgRE1BX0JJRElSRUNUSU9OQUwpOw0KPiA+ICtlcnJfcHV0X3RlZWRldjoNCj4gPiArICAgICB0
ZWVfZGV2aWNlX3B1dCh0ZWVkZXYpOw0KPiA+ICsNCj4gPiArICAgICByZXR1cm4gRVJSX1BUUigt
RU5PTUVNKTsNCj4gPiArfQ0KPiA+ICtFWFBPUlRfU1lNQk9MX0dQTCh0ZWVfc2htX2FsbG9jX2Rt
YV9tZW0pOw0KPiA+ICsjZWxzZQ0KPiA+ICtzdHJ1Y3QgdGVlX3NobSAqdGVlX3NobV9hbGxvY19k
bWFfbWVtKHN0cnVjdCB0ZWVfY29udGV4dCAqY3R4LA0KPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHNpemVfdCBwYWdlX2NvdW50KQ0KPiA+ICt7DQo+ID4gKyAgICAgcmV0
dXJuIEVSUl9QVFIoLUVJTlZBTCk7DQo+ID4gK30NCj4gPiArRVhQT1JUX1NZTUJPTF9HUEwodGVl
X3NobV9hbGxvY19kbWFfbWVtKTsNCj4gPiArI2VuZGlmDQo+ID4gKw0KPiA+ICBpbnQgdGVlX2R5
bl9zaG1fYWxsb2NfaGVscGVyKHN0cnVjdCB0ZWVfc2htICpzaG0sIHNpemVfdCBzaXplLCBzaXpl
X3QgYWxpZ24sDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50ICgqc2htX3JlZ2lz
dGVyKShzdHJ1Y3QgdGVlX2NvbnRleHQgKmN0eCwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCB0ZWVfc2htICpzaG0sDQo+ID4gZGlmZiAt
LWdpdCBhL2luY2x1ZGUvbGludXgvdGVlX2NvcmUuaCBiL2luY2x1ZGUvbGludXgvdGVlX2NvcmUu
aA0KPiA+IGluZGV4IGYxNzcxMDE5NmM0Yy4uZTQ2YTUzZTc1M2FmIDEwMDY0NA0KPiA+IC0tLSBh
L2luY2x1ZGUvbGludXgvdGVlX2NvcmUuaA0KPiA+ICsrKyBiL2luY2x1ZGUvbGludXgvdGVlX2Nv
cmUuaA0KPiA+IEBAIC0yOSw2ICsyOSw4IEBADQo+ID4gICNkZWZpbmUgVEVFX1NITV9QT09MICAg
ICAgICAgQklUKDIpICAvKiBNZW1vcnkgYWxsb2NhdGVkIGZyb20gcG9vbCAqLw0KPiA+ICAjZGVm
aW5lIFRFRV9TSE1fUFJJViAgICAgICAgIEJJVCgzKSAgLyogTWVtb3J5IHByaXZhdGUgdG8gVEVF
IGRyaXZlciAqLw0KPiA+ICAjZGVmaW5lIFRFRV9TSE1fRE1BX0JVRiAgICAgICAgICAgICAgQklU
KDQpICAvKiBNZW1vcnkgd2l0aCBkbWEtYnVmIGhhbmRsZSAqLw0KPiA+ICsjZGVmaW5lIFRFRV9T
SE1fRE1BX01FTSAgICAgICAgICAgICAgQklUKDUpICAvKiBNZW1vcnkgYWxsb2NhdGVkIHdpdGgg
Ki8NCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8qIGRtYV9hbGxv
Y19wYWdlcygpICovDQo+ID4NCj4gPiAgI2RlZmluZSBURUVfREVWSUNFX0ZMQUdfUkVHSVNURVJF
RCAgIDB4MQ0KPiA+ICAjZGVmaW5lIFRFRV9NQVhfREVWX05BTUVfTEVOICAgICAgICAgMzINCj4g
PiBAQCAtMzEwLDYgKzMxMiw5IEBAIHZvaWQgKnRlZV9nZXRfZHJ2ZGF0YShzdHJ1Y3QgdGVlX2Rl
dmljZSAqdGVlZGV2KTsNCj4gPiAgICovDQo+ID4gIHN0cnVjdCB0ZWVfc2htICp0ZWVfc2htX2Fs
bG9jX3ByaXZfYnVmKHN0cnVjdCB0ZWVfY29udGV4dCAqY3R4LCBzaXplX3Qgc2l6ZSk7DQo+ID4N
Cj4gPiArc3RydWN0IHRlZV9zaG0gKnRlZV9zaG1fYWxsb2NfZG1hX21lbShzdHJ1Y3QgdGVlX2Nv
bnRleHQgKmN0eCwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzaXpl
X3QgcGFnZV9jb3VudCk7DQo+ID4gKw0KPiA+ICBpbnQgdGVlX2R5bl9zaG1fYWxsb2NfaGVscGVy
KHN0cnVjdCB0ZWVfc2htICpzaG0sIHNpemVfdCBzaXplLCBzaXplX3QgYWxpZ24sDQo+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgaW50ICgqc2htX3JlZ2lzdGVyKShzdHJ1Y3QgdGVlX2Nv
bnRleHQgKmN0eCwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHN0cnVjdCB0ZWVfc2htICpzaG0sDQo+ID4gLS0NCj4gPiAyLjQzLjANCj4gPg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
