Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E5DB54527
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Sep 2025 10:22:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DFDA745547
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Sep 2025 08:22:15 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	by lists.linaro.org (Postfix) with ESMTPS id D52BD44544
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Sep 2025 08:22:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b="PS/lCbkl";
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.210.52 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-753b6703f89so332440a34.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Sep 2025 01:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757665327; x=1758270127; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FqmWGb+bqV5HnkceUK4yMUe3ao70v2Hu/Bx0pkeeRhg=;
        b=PS/lCbklednnM6WwS639fJA0YFBrPphbcuzVEeNx3PA/zYtyTGNTARG1QYzvR+n0Sq
         P7wD1l/6kOp/v/oYGkTUpQeMuvfRdO77re6PfP8SgUf6xaDN/k9oWHAFq4mTL1Cl3LeL
         fbCVHHQVwuFYkDmNvt0oLmitBs1YM1PmtDli+jtqE+1yk8yr4G2BYH0/Pd/j4LUrmB/h
         oeCQ0o3tN019TwS1ij5JnPwBK1KNLuo7OEKaPJT+2jbmZrR4TW8FUWWjTVbkn0Y8+WeQ
         MyAniNl+txiUG7JQOP5UouukhJoOShDIL6X7BHfgbF8Dd/UMq10zeFu3Y6v7Ii8VUXv1
         yuGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757665327; x=1758270127;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FqmWGb+bqV5HnkceUK4yMUe3ao70v2Hu/Bx0pkeeRhg=;
        b=maOQBkIU4r23WXhWFYocmzk3Y8VCMgXvD6B8TykH1Yq0NcCwy5usslD1xSFz2AKHNg
         HWB/69Gv9NTpB6/O66U3oUu+N3mJJkvktD1QeP8QK5l61Pv7t5EAgeObBQNTO4nHBe+t
         U8+d0JBtACItXX3kWe1FUmUKqh0U1/i3GIC7VIt/b+aMWE+mc8Ao+qHNaptU8D0DFT9H
         PYqxByxSxT42QFNhxdIU2oxSMjfow4DtKsr9+bjixu9ciJlHjt+OoLt++y7JOqJ0KIHV
         1kzF0cB6IuZiTvbjMOP38yS/U9IdBD7nGNZvbO529tDESzqF7V2WRe4KYcYZg7TrELEV
         YCJw==
X-Forwarded-Encrypted: i=1; AJvYcCU+HOBQraN9e+HXtKb+vo7Uyc3Q6HL5PNMeABLWZt93etoSs//AXKdPVzmfjelh2wovyEYpAVnXoUc1mWkc@lists.linaro.org
X-Gm-Message-State: AOJu0Yw0T5A1+ove4MS7d8XLR5B/EEGjVYudL5B9Cpyu6+XkntcLL9e4
	xkqfoPb6+i7myHfrgR2VPvL+x8T8ab1d595t+RLp3gs9HMF/JEmHAUGG/GKU0f0Hw2UIDW1v0Za
	PhgqJyUkPyWCz63n5eOjfqzKSQB0pa/Y4l14bWhphgX+p
X-Gm-Gg: ASbGncvDt8ds7TnxG3VS6PgfjjR6LGnYwWR6KhIXpizIPcQohiRKo5MLto4n0fvAoxm
	c+B28RJrF//0HVfNZy9rc2BSWTp5MMmNdMzHNgPE4DSlmbJ7IW99BBf6Bafw4H6y5RPFt7baju6
	QFiIK5KoI2YTJIQy8zvhtIFCtpcC8YsCKuNOZipUDybhJTOznLDT6Owl4rDjrkP0AqnJ3zJY+Ht
	CSNc03z
X-Google-Smtp-Source: AGHT+IF6KSmtzV3lD8Ye2Smqf1AHbbHzZL7yhMscYVEGZKEmeFM9f9fBRAk0lKMT9A8gz3y+3CIy3hDQkioIiFSlJ2M=
X-Received: by 2002:a05:6830:6a94:b0:745:9d11:cc87 with SMTP id
 46e09a7af769-75355ac462dmr1395964a34.35.1757665327140; Fri, 12 Sep 2025
 01:22:07 -0700 (PDT)
MIME-Version: 1.0
References: <20250911-qcom-tee-using-tee-ss-without-mem-obj-v12-0-17f07a942b8d@oss.qualcomm.com>
In-Reply-To: <20250911-qcom-tee-using-tee-ss-without-mem-obj-v12-0-17f07a942b8d@oss.qualcomm.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Fri, 12 Sep 2025 10:21:55 +0200
X-Gm-Features: Ac12FXxUkHtHNTLgZu3XBq2-UbPsnB-71u1NgRvPtOLVCD8F1behB1r-vwEiHeY
Message-ID: <CAHUa44Fow6BhkdTki=rt2psOC=dq99cRgwXsVagmQU7fttXyCw@mail.gmail.com>
To: Amirreza Zarrabi <amirreza.zarrabi@oss.qualcomm.com>,
	Bjorn Andersson <andersson@kernel.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D52BD44544
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.52:from];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: R3IS4CIZTMPPNEWXVMA2CPPEAQCWMLCV
X-Message-ID-Hash: R3IS4CIZTMPPNEWXVMA2CPPEAQCWMLCV
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Garg <sumit.garg@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Apurupa Pattapu <quic_apurupa@quicinc.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Harshal Dev <quic_hdev@quicinc.com>, linux-arm-msm@vger.kernel.org, op-tee@lists.trustedfirmware.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, Kuldeep Singh <quic_kuldsing@quicinc.com>, Sumit Garg <sumit.garg@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v12 00/11] Trusted Execution Environment (TEE) driver for Qualcomm TEE (QTEE)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R3IS4CIZTMPPNEWXVMA2CPPEAQCWMLCV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIEZyaSwgU2VwIDEyLCAyMDI1IGF0IDY6MDfigK9BTSBBbWlycmV6YSBaYXJyYWJp
DQo8YW1pcnJlemEuemFycmFiaUBvc3MucXVhbGNvbW0uY29tPiB3cm90ZToNCj4NCj4gVGhpcyBw
YXRjaCBzZXJpZXMgaW50cm9kdWNlcyBhIFRydXN0ZWQgRXhlY3V0aW9uIEVudmlyb25tZW50IChU
RUUpDQo+IGRyaXZlciBmb3IgUXVhbGNvbW0gVEVFIChRVEVFKS4gUVRFRSBlbmFibGVzIFRydXN0
ZWQgQXBwbGljYXRpb25zIChUQXMpDQo+IGFuZCBzZXJ2aWNlcyB0byBydW4gc2VjdXJlbHkuIEl0
IHVzZXMgYW4gb2JqZWN0LWJhc2VkIGludGVyZmFjZSwgd2hlcmUNCj4gZWFjaCBzZXJ2aWNlIGlz
IGFuIG9iamVjdCB3aXRoIHNldHMgb2Ygb3BlcmF0aW9ucy4gQ2xpZW50cyBjYW4gaW52b2tlDQo+
IHRoZXNlIG9wZXJhdGlvbnMgb24gb2JqZWN0cywgd2hpY2ggY2FuIGdlbmVyYXRlIHJlc3VsdHMs
IGluY2x1ZGluZyBvdGhlcg0KPiBvYmplY3RzLiBGb3IgZXhhbXBsZSwgYW4gb2JqZWN0IGNhbiBs
b2FkIGEgVEEgYW5kIHJldHVybiBhbm90aGVyIG9iamVjdA0KPiB0aGF0IHJlcHJlc2VudHMgdGhl
IGxvYWRlZCBUQSwgYWxsb3dpbmcgYWNjZXNzIHRvIGl0cyBzZXJ2aWNlcy4NCj4NCltzbmlwXQ0K
DQpJJ20gT0sgd2l0aCB0aGUgVEVFIHBhdGNoZXMsIFN1bWl0IGFuZCBJIGhhdmUgcmV2aWV3ZWQg
dGhlbS4NCg0KVGhlcmUgd2VyZSBzb21lIG1pbm9yIGNvbmZsaWN0cyB3aXRoIG90aGVyIHBhdGNo
ZXMgSSBoYXZlIGluIHRoZSBwaXBlDQpmb3IgdGhpcyBtZXJnZSB3aW5kb3csIHNvIHRoaXMgcGF0
Y2hzZXQgaXMgb24gdG9wIG9mIHdoYXQgSSBoYXZlIHRvDQphdm9pZCBtZXJnZSBjb25mbGljdHMu
DQoNCkhvd2V2ZXIsIHRoZSBmaXJtd2FyZSBwYXRjaGVzIGFyZSBmb3IgY29kZSBtYWludGFpbmVk
IGJ5IEJqw7Zybi4NCkJqw7ZybiwgaG93IHdvdWxkIHlvdSBsaWtlIHRvIGRvIHRoaXM/IENhbiBJ
IHRha2UgdGhlbSB2aWEgbXkgdHJlZSwgb3INCndoYXQgZG8geW91IHN1Z2dlc3Q/DQoNCkl0J3Mg
dXJnZW50IHRvIGdldCB0aGlzIHBhdGNoc2V0IGludG8gbGludXgtbmV4dCBpZiBpdCdzIHRvIG1h
a2UgaXQNCmZvciB0aGUgY29taW5nIG1lcmdlIHdpbmRvdy4gSWRlYWxseSwgSSdkIGxpa2UgdG8g
c2VuZCBteSBwdWxsIHJlcXVlc3QNCnRvIGFybS1zb2MgZHVyaW5nIHRoaXMgd2Vlay4NCg0KQ2hl
ZXJzLA0KSmVucw0KDQo+DQo+IC0tLQ0KPiBBbWlycmV6YSBaYXJyYWJpICgxMSk6DQo+ICAgICAg
IGZpcm13YXJlOiBxY29tOiB0em1lbTogZXhwb3J0IHNobV9icmlkZ2UgY3JlYXRlL2RlbGV0ZQ0K
PiAgICAgICBmaXJtd2FyZTogcWNvbTogc2NtOiBhZGQgc3VwcG9ydCBmb3Igb2JqZWN0IGludm9j
YXRpb24NCj4gICAgICAgdGVlOiBhbGxvdyBhIGRyaXZlciB0byBhbGxvY2F0ZSBhIHRlZV9kZXZp
Y2Ugd2l0aG91dCBhIHBvb2wNCj4gICAgICAgdGVlOiBhZGQgY2xvc2VfY29udGV4dCB0byBURUUg
ZHJpdmVyIG9wZXJhdGlvbg0KPiAgICAgICB0ZWU6IGFkZCBURUVfSU9DVExfUEFSQU1fQVRUUl9U
WVBFX1VCVUYNCj4gICAgICAgdGVlOiBhZGQgVEVFX0lPQ1RMX1BBUkFNX0FUVFJfVFlQRV9PQkpS
RUYNCj4gICAgICAgdGVlOiBpbmNyZWFzZSBURUVfTUFYX0FSR19TSVpFIHRvIDQwOTYNCj4gICAg
ICAgdGVlOiBhZGQgUXVhbGNvbW0gVEVFIGRyaXZlcg0KPiAgICAgICB0ZWU6IHFjb206IGFkZCBw
cmltb3JkaWFsIG9iamVjdA0KPiAgICAgICB0ZWU6IHFjb206IGVuYWJsZSBURUVfSU9DX1NITV9B
TExPQyBpb2N0bA0KPiAgICAgICBEb2N1bWVudGF0aW9uOiB0ZWU6IEFkZCBRdWFsY29tbSBURUUg
ZHJpdmVyDQo+DQo+ICBEb2N1bWVudGF0aW9uL3RlZS9pbmRleC5yc3QgICAgICAgICAgICAgIHwg
ICAxICsNCj4gIERvY3VtZW50YXRpb24vdGVlL3F0ZWUucnN0ICAgICAgICAgICAgICAgfCAgOTYg
KysrKw0KPiAgTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgNyAr
DQo+ICBkcml2ZXJzL2Zpcm13YXJlL3Fjb20vcWNvbV9zY20uYyAgICAgICAgIHwgMTE5ICsrKysN
Cj4gIGRyaXZlcnMvZmlybXdhcmUvcWNvbS9xY29tX3NjbS5oICAgICAgICAgfCAgIDcgKw0KPiAg
ZHJpdmVycy9maXJtd2FyZS9xY29tL3Fjb21fdHptZW0uYyAgICAgICB8ICA2MyArKy0NCj4gIGRy
aXZlcnMvdGVlL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKw0KPiAgZHJpdmVy
cy90ZWUvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICB8ICAgMSArDQo+ICBkcml2ZXJzL3Rl
ZS9xY29tdGVlL0tjb25maWcgICAgICAgICAgICAgIHwgIDEyICsNCj4gIGRyaXZlcnMvdGVlL3Fj
b210ZWUvTWFrZWZpbGUgICAgICAgICAgICAgfCAgIDkgKw0KPiAgZHJpdmVycy90ZWUvcWNvbXRl
ZS9hc3luYy5jICAgICAgICAgICAgICB8IDE4MiArKysrKysNCj4gIGRyaXZlcnMvdGVlL3Fjb210
ZWUvY2FsbC5jICAgICAgICAgICAgICAgfCA4MjAgKysrKysrKysrKysrKysrKysrKysrKysrKysr
DQo+ICBkcml2ZXJzL3RlZS9xY29tdGVlL2NvcmUuYyAgICAgICAgICAgICAgIHwgOTE1ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gIGRyaXZlcnMvdGVlL3Fjb210ZWUvbWVtX29i
ai5jICAgICAgICAgICAgfCAxNjkgKysrKysrDQo+ICBkcml2ZXJzL3RlZS9xY29tdGVlL3ByaW1v
cmRpYWxfb2JqLmMgICAgIHwgMTEzICsrKysNCj4gIGRyaXZlcnMvdGVlL3Fjb210ZWUvcWNvbXRl
ZS5oICAgICAgICAgICAgfCAxODUgKysrKysrKw0KPiAgZHJpdmVycy90ZWUvcWNvbXRlZS9xY29t
dGVlX21zZy5oICAgICAgICB8IDMwNCArKysrKysrKysrDQo+ICBkcml2ZXJzL3RlZS9xY29tdGVl
L3Fjb210ZWVfb2JqZWN0LmggICAgIHwgMzE2ICsrKysrKysrKysrDQo+ICBkcml2ZXJzL3RlZS9x
Y29tdGVlL3NobS5jICAgICAgICAgICAgICAgIHwgMTUwICsrKysrDQo+ICBkcml2ZXJzL3RlZS9x
Y29tdGVlL3VzZXJfb2JqLmMgICAgICAgICAgIHwgNjkyICsrKysrKysrKysrKysrKysrKysrKysr
DQo+ICBkcml2ZXJzL3RlZS90ZWVfY29yZS5jICAgICAgICAgICAgICAgICAgIHwgMTI3ICsrKyst
DQo+ICBkcml2ZXJzL3RlZS90ZWVfcHJpdmF0ZS5oICAgICAgICAgICAgICAgIHwgICA2IC0NCj4g
IGluY2x1ZGUvbGludXgvZmlybXdhcmUvcWNvbS9xY29tX3NjbS5oICAgfCAgIDYgKw0KPiAgaW5j
bHVkZS9saW51eC9maXJtd2FyZS9xY29tL3Fjb21fdHptZW0uaCB8ICAxNSArDQo+ICBpbmNsdWRl
L2xpbnV4L3RlZV9jb3JlLmggICAgICAgICAgICAgICAgIHwgIDU0ICstDQo+ICBpbmNsdWRlL2xp
bnV4L3RlZV9kcnYuaCAgICAgICAgICAgICAgICAgIHwgIDEyICsNCj4gIGluY2x1ZGUvdWFwaS9s
aW51eC90ZWUuaCAgICAgICAgICAgICAgICAgfCAgNTYgKy0NCj4gIDI3IGZpbGVzIGNoYW5nZWQs
IDQ0MTAgaW5zZXJ0aW9ucygrKSwgMjggZGVsZXRpb25zKC0pDQo+IC0tLQ0KPiBiYXNlLWNvbW1p
dDogOGI4YWVmYTVhNWM3ZDRhNjU4ODNlNTY1M2NmMTJmOTRjMGI2OGRiZg0KPiBjaGFuZ2UtaWQ6
IDIwMjQxMjAyLXFjb20tdGVlLXVzaW5nLXRlZS1zcy13aXRob3V0LW1lbS1vYmotMzYyYzY2MzQw
NTI3DQo+DQo+IEJlc3QgcmVnYXJkcywNCj4gLS0NCj4gQW1pcnJlemEgWmFycmFiaSA8YW1pcnJl
emEuemFycmFiaUBvc3MucXVhbGNvbW0uY29tPg0KPg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
