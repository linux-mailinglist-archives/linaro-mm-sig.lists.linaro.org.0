Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAC4C83286
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Nov 2025 03:59:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C1E13F8E5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Nov 2025 02:59:13 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by lists.linaro.org (Postfix) with ESMTPS id D38A13F806
	for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Nov 2025 02:58:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=FbbOkGz2;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.218.42 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b7373fba6d1so799899766b.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Nov 2025 18:58:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764039537; x=1764644337; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O1i9Pg1fYcoYDqOODigoVmyIThtWa9hBRCsH4xTUzek=;
        b=FbbOkGz23BWQbRD4dZRZ3k2BmBRhitZ9DmPVCH8RW+JQ4nb0SMQBnowK7z++Su7cAy
         AKUMkEr0AoXxhQ1lBtYN0b8PZUyXqUymCm/YOtKv4cVreVFWS3LuIapuV4J5DAnVOOAW
         iHn+ohfcCO2AbkQuz/xcw8CYXNNsTswOCeN5hh0rpvtA0hJIhBTlPgKBpO/v4BzPm/qo
         MblbI/wjInxg7vR2A96jX5GnTKQcLK1qQFr46SSi9wrMWlo4P5H7/HozTQqImkUbUyMw
         DtnQHEuAfX/wOcI3KG55bRDuu3/UsGCPYQql2EQ6vyIdziMsNzdp4QD0CU/qg3jqby/n
         lGSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764039537; x=1764644337;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=O1i9Pg1fYcoYDqOODigoVmyIThtWa9hBRCsH4xTUzek=;
        b=v5QFgbo5GMtJ3nunpbQqUHHLDsfM9689IFeJmHUtpmZ0OOO5wKw+VUQtBCpzKUfL8G
         un7MEbeCjXdbXn9jwC93ZogHg+z4DpkiPwrl8z0w8Et3KY4s/K7hPfTHgtUVHi9kTxLL
         Ol3//+V/z66dQnMIJw2/rj91bQuAi+QO/olhER6BFvz8kHzy8uRC4J2EEkEAwSCRei9o
         wXNwWoZBSFcro4gU8sFoRUe4tRG4Zrzzfs34WqFm+qM8XY97qGsmtxuEwJOPzq7Io65G
         1PNp+hrHSoGXJRZ+f3EtWS3PTTHsFF2gbWcOcjgha6Lf7g2j2wKMieyAt6AzP4hW4mqG
         TstQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJNvb6fUAat7Mlr/CCvIcaOiXXotB7k7haE1fJ8AS3rz0L1s2da0dV8DaMYWxym8bwsfSEKtuX5GuGfIR1@lists.linaro.org
X-Gm-Message-State: AOJu0Yxcm8ynpzkjnhn/AhV9kxUvApgwPGvt36L9Swt645fHF/0SVhxh
	Zg1lLUL59CvzxRmPKTjoyqbm6u/X44o+zYOnKvdNxentqQEasqrTpMDdj2Pu8ozjio/VBc0fWyT
	woapRCrW/OsbeZVRaNTFMXoh3rauaD0MQtzAf4a2oZnX9s+ME/eFPCyg=
X-Gm-Gg: ASbGncsrH5pVQTVWx8Ify9Iuq4BYQ0KyYNNEL0m7Kj5BeT+1ZteeYdTVciZNPdLKiZR
	osamcQDyJlTPgVR3yqYBOedOQqBZBOmLl1lSVpfDYVWzcBYC1843veHMZjBfpHVs8uJaqQmgLM9
	adiwCDszioY2DdHPdvRlSjSQaRNN1cjIIOZ6MXJA54Rrt+ddriPsqkxtLoJJB0DHLb0T9R7cWNz
	1oq4AlsurdqylrPuOY7b8HRdZQFD81pnwNntVtJ6eMdyd5xkB6yIqJ5fSDxIlAdIEIuSBj1q444
	gfOECM7JVwGfm5B8lxhIo1pDlw==
X-Google-Smtp-Source: AGHT+IH8TKpWAl3cxKGE3BUMxD7JPkRqm1DINKGxjicrIV47HJpJIe+DlpAHS/xEdgIv2iv1G1UOLkU7O+UC2H/ECyU=
X-Received: by 2002:a17:907:d05:b0:b73:6b24:14b5 with SMTP id
 a640c23a62f3a-b7671a47bafmr1669135966b.31.1764039536812; Mon, 24 Nov 2025
 18:58:56 -0800 (PST)
MIME-Version: 1.0
References: <20251120150018.27385-1-christian.koenig@amd.com> <20251120150018.27385-3-christian.koenig@amd.com>
In-Reply-To: <20251120150018.27385-3-christian.koenig@amd.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 25 Nov 2025 08:28:45 +0530
X-Gm-Features: AWmQ_bnX2P8Wmw4BNAKuGGkDxfDoHUIjU3-BJv6sxg3jqhoaKkIwPebVtDP3Rfw
Message-ID: <CAO_48GH=9Vym+o4Nn4JkEK2Qummn_VxscRqzS-vf5ZURXr-w_Q@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.42:from];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_COUNT_ONE(0.00)[1];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,ffwll.ch,gfxstrand.net,lists.linaro.org,lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D38A13F806
X-Spamd-Bar: ----
Message-ID-Hash: TSJOHCL7AYBGHXJSVVJXDEUUNUUEEB6A
X-Message-ID-Hash: TSJOHCL7AYBGHXJSVVJXDEUUNUUEEB6A
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: phasta@kernel.org, simona.vetter@ffwll.ch, faith@gfxstrand.net, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/4] dma-buf/sw-sync: always taint the kernel when sw-sync is used
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TSJOHCL7AYBGHXJSVVJXDEUUNUUEEB6A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpPbiBUaHUsIDIwIE5vdiAyMDI1IGF0IDIwOjMwLCBDaHJpc3RpYW4g
S8O2bmlnDQo8Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOg0KPg0KPiBU
aGUgU1ctc3luYyBmdW5jdGlvbmFsaXR5IHNob3VsZCBvbmx5IGJlIHVzZWQgZm9yIHRlc3Rpbmcg
YW5kIGRlYnVnZ2luZw0KPiBzaW5jZSBpdCBpcyBpbmhlcmVudGx5IHVuc2F2ZS4NCg0KVGhhbmsg
eW91IGZvciB0aGlzIHBhdGNoLCBMR1RNLg0KDQpQbGVhc2UgZmVlbCBmcmVlIHRvIGFkZDoNCkFj
a2VkLWJ5OiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KDQpCZXN0LA0K
U3VtaXQuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2RtYS1idWYvc3dfc3luYy5jIHwgNCAr
KysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspDQo+DQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS1idWYvc3dfc3luYy5jIGIvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYw0K
PiBpbmRleCAzYzIwZjFkMzFjZjUuLjZmMDlkMTNiZTZiNiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9kbWEtYnVmL3N3X3N5bmMuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvc3dfc3luYy5jDQo+
IEBAIC04LDYgKzgsNyBAQA0KPiAgI2luY2x1ZGUgPGxpbnV4L2ZpbGUuaD4NCj4gICNpbmNsdWRl
IDxsaW51eC9mcy5oPg0KPiAgI2luY2x1ZGUgPGxpbnV4L3VhY2Nlc3MuaD4NCj4gKyNpbmNsdWRl
IDxsaW51eC9wYW5pYy5oPg0KPiAgI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4NCj4gICNpbmNsdWRl
IDxsaW51eC9zeW5jX2ZpbGUuaD4NCj4NCj4gQEAgLTM0OSw2ICszNTAsOSBAQCBzdGF0aWMgbG9u
ZyBzd19zeW5jX2lvY3RsX2NyZWF0ZV9mZW5jZShzdHJ1Y3Qgc3luY190aW1lbGluZSAqb2JqLA0K
PiAgICAgICAgIHN0cnVjdCBzeW5jX2ZpbGUgKnN5bmNfZmlsZTsNCj4gICAgICAgICBzdHJ1Y3Qg
c3dfc3luY19jcmVhdGVfZmVuY2VfZGF0YSBkYXRhOw0KPg0KPiArICAgICAgIC8qIFNXIHN5bmMg
ZmVuY2UgYXJlIGluaGVyZW50bHkgdW5zYWZlIGFuZCBjYW4gZGVhZGxvY2sgdGhlIGtlcm5lbCAq
Lw0KPiArICAgICAgIGFkZF90YWludChUQUlOVF9TT0ZUTE9DS1VQLCBMT0NLREVQX1NUSUxMX09L
KTsNCj4gKw0KPiAgICAgICAgIGlmIChmZCA8IDApDQo+ICAgICAgICAgICAgICAgICByZXR1cm4g
ZmQ7DQo+DQo+IC0tDQo+IDIuNDMuMA0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
