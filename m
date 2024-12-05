Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 137399E6131
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Dec 2024 00:18:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5C26243F7E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Dec 2024 23:18:19 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by lists.linaro.org (Postfix) with ESMTPS id E84CF43C00
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Dec 2024 23:18:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=4IqMH631;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.218.50 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-aa5325af6a0so228799266b.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 05 Dec 2024 15:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733440691; x=1734045491; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ABRkDj2N+QkWL48IvhN2/HmURfPPjhYtD6+wjCTrDIo=;
        b=4IqMH631ZEzj91QVl9Px2dt+oGUKrQIByFfcTdAhZwoxdNHaCnz5I97jxpC4HUDWok
         G8Ef98IGBgTD/hYQz1FwqRvXHhr4g8WpGB2HtBVTvWP5ED+YZvR/HLVDe7hM6DIDnNwh
         9BvMDiZD3dPU2NWNKJTSsFf/7RftcLiKVbHda+h+1IY6hK23j3609EkPwNJVGHMiNb1y
         tjpx+Kp27ZsoVSAJvBjrH3m6L6um/i/TwZtGo3nIg+wJIPfyEo8vwBR+piuu/8MpPAnk
         T+RAhQAsX0FXogPvbq1Pol4D9Wqs0AP0slS2IWn1DGgfXsAsydqesfdG+lYy9kBEHn0o
         CjOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733440691; x=1734045491;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ABRkDj2N+QkWL48IvhN2/HmURfPPjhYtD6+wjCTrDIo=;
        b=O07CX4QM6ClBjeB2utKHGzl+b6d+YTWVp6bx0qhlepqpLvqOUXYSVvdcc88TWiJBHD
         yAZ+/tzJv9Radm1cfKo1cIJ+3yg18Hz5NwLWtvlfrqU8PDZ4/4JTKSvIVOkicPj2Ol4o
         QSnixAUUA9ipYufBbNO/ti76oOmFjqhSIOpfDvxf7aD2uJ22jlwpbIGndZBI8FP6B0ev
         ro+wCliapiOMjI7GwcRWlft0deDVzu02wVbgHCDO00i9ngOXNY8wysKdlwk9BoP0DCB5
         Dqpt0mY8Vna6NWBZ+qIR5dPGvLaE5c6C6J8v56+L0VLzAW7gwvBc/zIXpQyHT3nT02Ve
         LVoQ==
X-Forwarded-Encrypted: i=1; AJvYcCWH9N8NUghf0KWlR3hO5rJ8MeLj9tpC97dv38VRfJjdA3ooofeI8ByM9FvB529lFKgBgpzZ7G41kWRlO/Tv@lists.linaro.org
X-Gm-Message-State: AOJu0YzUChCUfq3hrQA0TG0TWY0ESJNvGzf1xLrbU60X1ZNdyty7MYsB
	VQUND0I4tHoAtDTtkxCf+jSzHr0bg7dwCxLPgZH6GuKKSsXiSz3/Zed7lmuBMWeaN8Mvk0z1xtk
	FydaTiJOPWs6uYBvXqaUaHabEMHQCsH/iaHQ=
X-Gm-Gg: ASbGncthfqBCLlFL831m1eIiBSKPKxdVjyJ9qvw0xlierrDsZ4Vx14fgwaFKLbeVd/r
	Pi0CekKXws6aUZjRZ9BdAZz6IAmUCnnK2HgBEHQ6KN/GZwFy7pwDpeKkG35Gq
X-Google-Smtp-Source: AGHT+IFp8XCFg1lEU3e1fi+fHUhDavDNkEfjadO/eMfIJfRp5lhMaScdyBmt/tCjFNB2PINDghB3+C6LC7IZg7++n4w=
X-Received: by 2002:a17:907:3a57:b0:aa5:2bab:69f6 with SMTP id
 a640c23a62f3a-aa639fb37fbmr47238966b.8.1733440690804; Thu, 05 Dec 2024
 15:18:10 -0800 (PST)
MIME-Version: 1.0
References: <20241202115827.50388-1-mripard@kernel.org> <CANDhNCpTnc6=YkjQgQngRCw1_xLWgOFrcjTxrrGX+bRhvGb5DQ@mail.gmail.com>
 <20241203-cerulean-ringtail-of-speed-920c5f@houat> <f6412229-4606-41ad-8c05-7bbba2eb6e08@ti.com>
In-Reply-To: <f6412229-4606-41ad-8c05-7bbba2eb6e08@ti.com>
From: John Stultz <jstultz@google.com>
Date: Thu, 5 Dec 2024 15:17:57 -0800
Message-ID: <CANDhNCqtMUaO4Y_7UYGJebDEdN==vTAQRexuuek5SZt5rqd8sQ@mail.gmail.com>
To: Andrew Davis <afd@ti.com>
X-Rspamd-Queue-Id: E84CF43C00
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.07 / 15.00];
	BAYES_HAM(-2.97)[99.87%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.50:from];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.218.50:from];
	URIBL_BLOCKED(0.00)[ti.com:email];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: VR7SUDV6JLHLQP53JRFEDMEUJFQ4PR64
X-Message-ID-Hash: VR7SUDV6JLHLQP53JRFEDMEUJFQ4PR64
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maxime Ripard <mripard@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, linux-doc@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] Documentation: dma-buf: heaps: Add heap name definitions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VR7SUDV6JLHLQP53JRFEDMEUJFQ4PR64/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBEZWMgMywgMjAyNCBhdCAxMTowNOKAr0FNIEFuZHJldyBEYXZpcyA8YWZkQHRpLmNv
bT4gd3JvdGU6DQo+IE9uIDEyLzMvMjQgMTo0NCBBTSwgTWF4aW1lIFJpcGFyZCB3cm90ZToNCj4g
PiBPbiBNb24sIERlYyAwMiwgMjAyNCBhdCAxMToxMjoyM0FNIC0wODAwLCBKb2huIFN0dWx0eiB3
cm90ZToNCj4gPj4gSHJtLiBJJ20gbm90IHN1cmUgSSBzZWUgdGhlIHZhbHVlIGluIGVudW1lcmF0
aW5nIHRoaW5ncyBpbiB0aGlzIHdheSwNCj4gPj4gaXQgc2VlbXMgbGlrZSBpdCB3aWxsIGJlIGEg
bnVpc2FuY2UgdG8ga2VlcCBjdXJyZW50PyAgTWF5YmUgc29tZXRoaW5nDQo+ID4+IGxpa2U6DQo+
ID4+DQo+ID4+IE9uIG1vc3Qgc3lzdGVtcyB0aGUgZGVmYXVsdCBjbWEgcmVnaW9uIGlzIG5hbWVk
ICJsaW51eCwgY21hIiBvcg0KPiA+PiAicmVzZXJ2ZWQiLCB3aXRoIGEgZmV3IGV4Y2VwdGlvbnM6
DQo+ID4+ICAgICAgLSBBbGx3aW5uZXIgc3VuNGksIHN1bjVpIGFuZCBzdW43aSBmYW1pbGllczog
YGBkZWZhdWx0LXBvb2xgYA0KPiA+DQo+ID4gSSdtIGEgYml0IHdvcnJpZWQgYWJvdXQgZG9pbmcg
c28uIFdoYXQgaWYsIG9uIGEgImxpbnV4LGNtYSIgc3lzdGVtLCB3ZQ0KPiA+IGhhdmUgYW5vdGhl
ciAicmVzZXJ2ZWQiIGhlYXAgY3JlYXRlZCB3aXRoIGRpZmZlcmVudCBzZW1hbnRpY3M/DQo+ID4N
Cj4NCj4gSGF2aW5nIHRoZSAiZGVmYXVsdCBDTUEiIGhlYXAgZ2V0IGl0cyBkZXYgbmFtZSBiYXNl
ZCBvbiB0aGUgbWV0aG9kIHRoYXQNCj4gY3JlYXRlZCBpdCB3YXMgYXJndWFibHkgYSBtaXN0YWtl
IG1hZGUgd2hlbiBmaXJzdCB1cHN0cmVhbWluZyB0aGlzIGhlYXAuDQo+IFdlIHNob3VsZCBmaXgg
dGhpcywgdGhlbiBtYXliZSBhZGQgdGhlIG9sZCBuYW1lIGFzIGEgbGluayBqdXN0IGZvcg0KPiBi
YWNrd2FyZHMgY29tcGF0IGFzIG5lZWRlZC4NCj4NCj4gZXhwX2luZm8ubmFtZSA9ICJkZWZhdWx0
X2NtYSI7DQo+DQo+IEFsbCBvdGhlciBDTUEgYW5kIGNhcnZlb3V0IGhlYXBzIHdpbGwgaGF2ZSBu
YW1lcyBiYXNlZCBvbiB0aGVpcg0KPiBtZXRob2Qgb2YgY3JlYXRpb24gYXMgdGhlcmUgbWF5IGJl
IG11bHRpcGxlIG9mIHRoZW0sIGJ1dCB0aGVyZQ0KPiB3aWxsIG9ubHkgZXZlcnkgYmUgb25lICJk
ZWZhdWx0IENNQSIgYXJlYSwgYW5kIGl0cyBoZWFwIHNob3VsZA0KPiBiZSBuYW1lZCB0byBtYXRj
aC4NCg0KVGhpcyBzZWVtcyByZWFzb25hYmxlIHRvIG1lLiBNYXliZSBwdXR0aW5nIHRoZSBsaW5r
IGNyZWF0aW9uIGJlaGluZCBhDQpjb21wYXRpYmlsaXR5IGNvbmZpZyBzbyB0aGV5IGNhbiBiZSBs
YXRlciBkZXByZWNhdGVkPw0KDQpUaGF0IHNhaWQsIHdoaWxlIEkgdW5kZXJzdGFuZCB0aGUgaW1w
dWxzZSB0byB3YW50IHRvIGZpeCB0aGUgaGVhcA0KbmFtZXMgc28gYXBwbGljYXRpb25zIGNhbiBk
ZXBlbmQgb24gdGhlbSwgSSBhbHNvIHdhbnQgdG8gY2F1dGlvbiBpdCdzDQphIGxpdHRsZSBiaXQg
bGlrZSB0cnlpbmcgdG8gaGFyZCBjb2RlIGV0aDAgYXMgYSBuZXR3b3JrIGRldmljZSBuYW1lIGlu
DQp5b3VyIHNjcmlwdHMuICBUaGVyZSBhcmUgdG9vIG1hbnkgcG90ZW50aWFsIGNvbmZpZ3VyYXRp
b25zLCBhbmQgYW55DQpmaXhlZCBtYXBwaW5nIGlzIGdvaW5nIHRvIGJyZWFrIGluIHNvbWUgY2Fz
ZXMuICBJIHRoaW5rIHRoZXJlIGlzIGp1c3QNCmdvaW5nIHRvIGhhdmUgdG8gYmUgc29tZSAoZ3Jh
bGxvYy1saWtlKSBkZXZpY2Utc3BlY2lmaWMgY29uZmlndXJhdGlvbg0KZ2x1ZSB0byBtYXAgYSBw
aXBlbGluZS91c2UtY2FzZSB0byB0aGUgbWVtb3J5IHR5cGUgKHNpbWlsYXIgdG8gZnN0YWINCmZv
ciBmaWxlc3lzdGVtIHRvIG1vdW50IHBvaW50cykgaW4gb3JkZXIgdG8gaGFuZGxlIGV2ZXJ5IGNh
c2UuDQoNClNvIGlmIEknbSBiZWluZyBhIGxpdHRsZSBzcXVpcnJlbHkgb24gZml4ZWQgbmFtZXMs
IGl0J3MgbW9zdGx5IGR1ZSB0bw0Kd2FudGluZyB0byBhdm9pZCBhbnlvbmUgZ2V0dGluZyB0aGUg
bWlzdGFrZW4gaW1wcmVzc2lvbiB0aGF0IGZpeGVkDQptYXBwaW5ncyB3aWxsIGdlbmVyYWxseSB3
b3JrLg0KDQp0aGFua3MNCi1qb2huDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
