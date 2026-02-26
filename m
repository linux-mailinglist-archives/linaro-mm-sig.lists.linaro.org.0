Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBJaM9x7oGmMkAQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 17:59:08 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 678C31AB7D8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 17:59:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 524E53F8EC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 16:59:07 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id C3B983F8EC
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 16:59:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=BXp70j2k;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.47 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-48318d08ec2so73005e9.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 08:59:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772125144; cv=none;
        d=google.com; s=arc-20240605;
        b=C2ov9M/wqIeJraHX0gnFkFNR+B+YDSW3cNnjz/r7G4e5DrnFBug9GCfs9PS8XPRFKg
         xN9e11UyTFmKh2qNa9d13Ent4azfxF6ensNGE5J//g/izDeD0h3aYIptQlJvLAtpVtX3
         Bb2moMpssTleJjTNEOZdNZP/2zt/VI5mm0+yNaRLIT6l87GVB/woqknhFCck7mw77LN6
         G2mjb3CQLFPPQC4OeOMSQZoXuQNKYbfuDgUXvmswW/EM45BVLOi/MbKmBAkoF7CWW2hj
         YEpyMlnRgBT022qmgnq/NDpLXlNXdn3VFq4A8lQ48GVntalt3trY+3WcrBkfMcuEXiM2
         TxWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=GaC7hfbtyJLGGerhfBe2P9Hj0mHnDOXyDJFEYnDiBqY=;
        fh=7aW+VyScZn4THSDDUqCvr0crCagxcs8BX74GqUM1f4g=;
        b=ST1f+YNhxmjwW7yA7Y2RniupiuJEDoGdzHR6OfMTxl6G+J/7rldC8F0E7n223APIEC
         rA3pa87rIU/1TrKIg52cpcADXIC1gu7ivI/n+tFXXbmaSAthFxexdT4UGz4Q9Ra5HbCc
         bIH6cdGYlzSpRTIO+3eXvmkGVcueuwmG3R9qPgDzlugsGbmyZLUk3tT7OoPNExiI6PPR
         FRILmzjPN6sw5ZhCN+jzQmnJW/kytNM10jtfyBWNDBMcwg29H+CFozdsImqh2bVSAZcv
         ZAm0B/B+jvncelxNY/vrwjO56ugfvqYcJAtHcJtNRgx7dl7sCHez6m9mDKOSOGsnPeeb
         OjIQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1772125144; x=1772729944; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GaC7hfbtyJLGGerhfBe2P9Hj0mHnDOXyDJFEYnDiBqY=;
        b=BXp70j2kOfers95x2AKMHp6T2qJCjaO9skLZ9lw7PIhZ9IyHoTYNLyLXaAXc/8b5sQ
         mbhNjAjMYDCz2bPgjpdO/AUeBe7kotJ4hfM58dJ0/aHwbDQPx+FslXVBqr1qgaPYyXOV
         TaOTL6VuFD6xd2zHUelLvShCBERwJ3ptJVHR1aYOEQXXllX9Wd4jpo7/mwDbzWriln/3
         gIqqPwEKk4rcO+BxeeHo3MjLA0kNua8tiboefxl6J0sWDYijyEvQwOVVSTu7ZYSS4Ysc
         WBjXB/++tEdC35Ag4kYWWuTv0Npw69E2NDhHryRRjbgRH1INryGTq+NzqyjGxscPXmXZ
         PM7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772125144; x=1772729944;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GaC7hfbtyJLGGerhfBe2P9Hj0mHnDOXyDJFEYnDiBqY=;
        b=kne7aqMFMQgZpcSOxG6VfDVTUkA8xCqOX0lMa6Kganb3Efuitlux8HmnyLbkIYC4lf
         n9QPKY0Ot43p9XVvlyqICn2MTmsK5Q4nIe9Vrupdf4EIjjU15rX9pqlunm9CWfZ42EDj
         XJqwm4baIPTDpSkfx2GCZ/tYn+0mzeFYyAq135M3EQcW+nIZHwMAcPzDcUu/c5GEDhxp
         lW4cD4c6+8TEoCTq7TJUfYEK9opCwafpEfMXtayfqBA8Pvq2G2fA3r6XrRILPHWFunBh
         O+YCrGOfFa6zg8ZzPMhX2qfXQAWXTmsMXK62CF9vPHciD1PCP4NssrTIsmoLWUUHV3DR
         +JGA==
X-Forwarded-Encrypted: i=1; AJvYcCWuKFTktYlLSbplAQ276nZibMSYLTVL6YeAA5UOv2daiXxhJp9p+AfMUk8uyF0Xdk2+yG18KnrnF+1QjYJZ@lists.linaro.org
X-Gm-Message-State: AOJu0Yx4yaGoFtKhv1dV1HuIldxk4OlGWlFhojUN+PdxWhm7wUMMWm70
	JQdLNCSrpQR2ebLsQddlnWZOxXgB7rZkseD+qIc2pFA6fqocN7yZMuN4+yK4M308JGD6A+hKKoc
	SIbwVLwDbT7bay/q8b5YkSUXHO5H5bu5IPJjjJRg+
X-Gm-Gg: ATEYQzzPFQ1t6zUxnZPLYX1MPMQ6OZ674+GER6xBzn7PDlhU9Ew9l60DRi6kcmHrNhH
	goadjubG1KM4HPPukLOf0XMbjceX75nG8h77u3QUdd2brjfdGDV0eJrimpJeFj3aIU1dhFsX6i1
	v8hwh7Avt8Ue5Ocz11pjs3kF5EqlQ8kYuM64Vl5y+Ij+7uO1lJrLUQxmNc1DNNZBFi/OMBgDZxO
	MhJrY6RFjRAsWl1PPE+rqSWkhHwRWJwnCMYsHRIFwT9P+VIcUZ6O4Nc9ABvdPL/kdX3poNgtOPw
	VvG+07iqn3vIJQAmQBtsYLvozcPQ8g8OZP1GvlJCn+VRVu0yxOJUnLRyASD6oHsDrMtmsQ==
X-Received: by 2002:a05:600c:4f16:b0:47e:de1d:ce99 with SMTP id
 5b1f17b1804b1-483c31a76e5mr1276055e9.12.1772125143309; Thu, 26 Feb 2026
 08:59:03 -0800 (PST)
MIME-Version: 1.0
References: <20260225-dma-buf-heaps-as-modules-v1-0-2109225a090d@kernel.org>
 <20260225-dma-buf-heaps-as-modules-v1-2-2109225a090d@kernel.org>
 <60ecebf2-a708-4797-bedd-588c3e9931ff@kernel.org> <20260226-impetuous-analytic-jellyfish-d4a86d@penduick>
In-Reply-To: <20260226-impetuous-analytic-jellyfish-d4a86d@penduick>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Thu, 26 Feb 2026 08:58:51 -0800
X-Gm-Features: AaiRm51ICxvhnfb6IRxyaVo1JANC2yUPYPY4UyYDMkMh1Zp0Qc24kArQnpKFuW4
Message-ID: <CABdmKX0KZLGaJWBoo3tkCxLvby3f4Fn0nMCLyz4a-H-9J_CtPQ@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: JQR4A6RU246HCW25THLEUAVKUT2EVIXR
X-Message-ID-Hash: JQR4A6RU246HCW25THLEUAVKUT2EVIXR
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "David Hildenbrand (Arm)" <david@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/7] mm: cma: Export cma_alloc and cma_release
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JQR4A6RU246HCW25THLEUAVKUT2EVIXR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	NEURAL_HAM(-0.00)[-0.980];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 678C31AB7D8
X-Rspamd-Action: no action

T24gVGh1LCBGZWIgMjYsIDIwMjYgYXQgMjozOOKAr0FNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IEhpIERhdmlkLA0KPg0KPiBPbiBUaHUsIEZlYiAyNiwg
MjAyNiBhdCAxMToyNToyNEFNICswMTAwLCBEYXZpZCBIaWxkZW5icmFuZCAoQXJtKSB3cm90ZToN
Cj4gPiBPbiAyLzI1LzI2IDE3OjQxLCBNYXhpbWUgUmlwYXJkIHdyb3RlOg0KPiA+ID4gVGhlIENN
QSBkbWEtYnVmIGhlYXAgdXNlcyBjbWFfYWxsb2MoKSBhbmQgY21hX3JlbGVhc2UoKSB0byBhbGxv
Y2F0ZSBhbmQNCj4gPiA+IGZyZWUsIHJlc3BlY3RpdmVseSwgaXRzIENNQSBidWZmZXJzLg0KPiA+
ID4NCj4gPiA+IEhvd2V2ZXIsIHRoZXNlIGZ1bmN0aW9ucyBhcmUgbm90IGV4cG9ydGVkLiBTaW5j
ZSB3ZSB3YW50IHRvIHR1cm4gdGhlIENNQQ0KPiA+ID4gaGVhcCBpbnRvIGEgbW9kdWxlLCBsZXQn
cyBleHBvcnQgdGhlbSBib3RoLg0KPiA+ID4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IE1heGltZSBS
aXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4NCj4gPiA+IC0tLQ0KPiA+ID4gIG1tL2NtYS5jIHwg
MiArKw0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykNCj4gPiA+DQo+ID4g
PiBkaWZmIC0tZ2l0IGEvbW0vY21hLmMgYi9tbS9jbWEuYw0KPiA+ID4gaW5kZXggOTRiNWRhNDY4
YTdkNzE5ZTUxNDRkMzNiMDZiY2M3NjE5YzBmYmNjOS4uYmUxNDJiNDczZjNiZDQxYjljN2Q4YmE0
Mzk3ZjAxOGY2OTkzZDk2MiAxMDA2NDQNCj4gPiA+IC0tLSBhL21tL2NtYS5jDQo+ID4gPiArKysg
Yi9tbS9jbWEuYw0KPiA+ID4gQEAgLTk0OSwxMCArOTQ5LDExIEBAIHN0cnVjdCBwYWdlICpjbWFf
YWxsb2Moc3RydWN0IGNtYSAqY21hLCB1bnNpZ25lZCBsb25nIGNvdW50LA0KPiA+ID4gICAgIGlm
IChwYWdlKQ0KPiA+ID4gICAgICAgICAgICAgc2V0X3BhZ2VzX3JlZmNvdW50ZWQocGFnZSwgY291
bnQpOw0KPiA+ID4NCj4gPiA+ICAgICByZXR1cm4gcGFnZTsNCj4gPiA+ICB9DQo+ID4gPiArRVhQ
T1JUX1NZTUJPTF9HUEwoY21hX2FsbG9jKTsNCj4gPiA+DQo+ID4gPiAgc3RhdGljIHN0cnVjdCBj
bWFfbWVtcmFuZ2UgKmZpbmRfY21hX21lbXJhbmdlKHN0cnVjdCBjbWEgKmNtYSwNCj4gPiA+ICAg
ICAgICAgICAgIGNvbnN0IHN0cnVjdCBwYWdlICpwYWdlcywgdW5zaWduZWQgbG9uZyBjb3VudCkN
Cj4gPiA+ICB7DQo+ID4gPiAgICAgc3RydWN0IGNtYV9tZW1yYW5nZSAqY21yID0gTlVMTDsNCj4g
PiA+IEBAIC0xMDI1LDEwICsxMDI2LDExIEBAIGJvb2wgY21hX3JlbGVhc2Uoc3RydWN0IGNtYSAq
Y21hLCBjb25zdCBzdHJ1Y3QgcGFnZSAqcGFnZXMsDQo+ID4gPg0KPiA+ID4gICAgIF9fY21hX3Jl
bGVhc2VfZnJvemVuKGNtYSwgY21yLCBwYWdlcywgY291bnQpOw0KPiA+ID4NCj4gPiA+ICAgICBy
ZXR1cm4gdHJ1ZTsNCj4gPiA+ICB9DQo+ID4gPiArRVhQT1JUX1NZTUJPTF9HUEwoY21hX3JlbGVh
c2UpOw0KPiA+ID4NCj4gPiA+ICBib29sIGNtYV9yZWxlYXNlX2Zyb3plbihzdHJ1Y3QgY21hICpj
bWEsIGNvbnN0IHN0cnVjdCBwYWdlICpwYWdlcywNCj4gPiA+ICAgICAgICAgICAgIHVuc2lnbmVk
IGxvbmcgY291bnQpDQo+ID4gPiAgew0KPiA+ID4gICAgIHN0cnVjdCBjbWFfbWVtcmFuZ2UgKmNt
cjsNCj4gPiA+DQo+ID4NCj4gPiBJJ20gd29uZGVyaW5nIHdoZXRoZXIgd2Ugd2FudCB0byByZXN0
cmljdCBhbGwgdGhlc2UgZXhwb3J0cyB0byB0aGUNCj4gPiBkbWEtYnVmIG1vZHVsZSBvbmx5IHVz
aW5nIEVYUE9SVF9TWU1CT0xfRk9SX01PRFVMRVMoKS4NCj4NCj4gVElMIGFib3V0IEVYUE9SVF9T
WU1CT0xfRk9SX01PRFVMRVMsIHRoYW5rcy4NCg0KT2hoLCBkaXR0by4NCg0KPiA+IEVzcGVjaWFs
bHkgZG1hX2NvbnRpZ3VvdXNfZGVmYXVsdF9hcmVhKCkgKHBhdGNoICM0KSwgSSBhbSBub3Qgc3Vy
ZQ0KPiA+IHdoZXRoZXIgd2Ugd2FudCBhcmJpdHJhcnkgbW9kdWxlcyB0byBtZXNzIHdpdGggdGhh
dC4NCj4NCj4gWWVhaCwgSSB3YXNuJ3QgdG9vIGZvbmQgYWJvdXQgdGhhdCBvbmUgZWl0aGVyLiBB
bHRlcm5hdGl2ZWx5LCBJIGd1ZXNzIHdlDQo+IGNvdWxkIHR1cm4gZGV2X2dldF9jbWFfYXJlYSBp
bnRvIGEgbm9uLWlubGluZWQgZnVuY3Rpb24gYW5kIGV4cG9ydCB0aGF0DQo+IGluc3RlYWQ/DQoN
CkkgY2hlY2tlZCB0aGUgaGlzdG9yeSB0byBzZWUgaWYgZGV2X2dldF9jbWFfYXJlYSB3YXMgY29u
dmVydGVkIHRvDQppbmxpbmUgYXQgc29tZSBwb2ludCBmb3IgcGVyZm9ybWFuY2UsIGJ1dCBpdCBo
YXMgYWx3YXlzIGJlZW4gdGhhdCB3YXkNCnNpbmNlIDMuNS4gVGhhdCdkIGJlIG15IG9ubHkgd29y
cnkgd2l0aCB1bi1pbmxpbmluZyBhbmQgZXhwb3J0aW5nIGl0Lg0KRVhQT1JUX1NZTUJPTF9GT1Jf
TU9EVUxFUyBzb3VuZHMgbGlrZSBhIGJldHRlciB3YXkgdG8gbWUuDQoNCj4gT3Igd2UgY291bGQg
ZG8gYm90aC4NCj4NCj4gTWF4aW1lDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
