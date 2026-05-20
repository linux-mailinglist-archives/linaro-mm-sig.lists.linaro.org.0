Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPztORKfDWqC0AUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 13:46:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFC258CE44
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 13:46:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB4D240964
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 11:46:24 +0000 (UTC)
Received: from mail-yx1-f44.google.com (mail-yx1-f44.google.com [74.125.224.44])
	by lists.linaro.org (Postfix) with ESMTPS id 7CE5C3F96B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 11:46:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Q2soMrFx;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of ju.orth@gmail.com designates 74.125.224.44 as permitted sender) smtp.mailfrom=ju.orth@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yx1-f44.google.com with SMTP id 956f58d0204a3-6530287803cso4808468d50.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 04:46:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779277573; cv=none;
        d=google.com; s=arc-20240605;
        b=T+QcPRNLjsQNLcO7LcersaXUwahTS84ZfSIRaPfbbZuFybcWDo3bq9onWLZzPqZTmi
         HfvhHLhhqFE49yxOpfXNF2a1jz+R1Fh2AjoMPl1488lO7HbOGeZFu37mbdu9Z9E+y3ho
         DS/BEK3cYvsCdJGYiTH/kqCIyUTJv1HzNksj1/1Z/Vq7xqH6pPu88Cjra4otXcS3Qts0
         4Fojh5etbTZ0vuxYbViHYa5T6nNFsyvaor5qzpgbI+9ukJiMpK6t/LrF9lAGS6D03XZ0
         OFVNfofG7NpyQ+G5KV7CCF7TmliBo2txdcGuoaJHYKKbQYsATACtKzAz/2nETdTeT5yC
         xP9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=mwQC2VpgPcAOO/eSiXMuOlKGLERJ6tVL0QZy3DdZeqg=;
        fh=XQt17XgmTTy16PG3G2k/NONZpwKzrA1QwuMDdd5pdRQ=;
        b=h2X5O2urbAzgwgyHhLMG0KDjq45oaM/v7iTBJ8tvdkRfOlrr8VluE70FKx0bGn+nAQ
         bEsm3VhA52s6+KKGVgRmX4XxZwR5uU7YNsq1I6cudOHhpude8iN6Q1aJsN7kzyrCLBR9
         8T6AOgRV8g8k7gxbgE7wJgbMRFfzjnBeKd1Ra1n8pNKEe+IB4hnE5uFdQIjLGszKt1QR
         NpLut/jE8a15MPRTFyV/QCGKd2GjN6QsWhzdX+BxedY+1S17At/SSvs5e1oVOY8VpHsu
         SrBjWrThzET8BfZmdsVqB+/HpClaj9i9iUQolXEXsL3wTEQhe8jaqTaXuycZ3RksS/Wj
         5m/g==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779277573; x=1779882373; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mwQC2VpgPcAOO/eSiXMuOlKGLERJ6tVL0QZy3DdZeqg=;
        b=Q2soMrFx0OGdpAAfm1Oyr+okjG2IZs+0qoJmdt8c8sIyzyRwC97+cr86E0wgB843Ub
         96nj9cAqwZKPYkJ6IS3OlvusjEOlOFh/s1wCG9CQ+HB1L9EVKWEc5nGDZHlu8OSx3Omj
         7MSvBaH4C7PTnD6jqZh1c+cst65vyb3JO5Xgmu0uCXIMtlskD20nBtwF71K6iT9uZy28
         JOfsG+X7AXYPEWN0xjVdeFWMO3+Og01KCfuL5t+mC79mWv366qPRgr1MSODd1TQTCqla
         lLBpbxcXkWbFKEg9Uq30eD0dY2E3VXQYVpNjrPpBNGzC5VePc8fnuaODozY00fzgXqR2
         53Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779277573; x=1779882373;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mwQC2VpgPcAOO/eSiXMuOlKGLERJ6tVL0QZy3DdZeqg=;
        b=azQLb5u0NSdGNSXKI8tlcMe7DZZGO6Uj86BTJugpUuSSHeG8P80J7ljltIrDn7PXdh
         cnHZ5zQLNjiwan1WpmXygBS6wV8Z3Nb/zAm9W8glO3R9irI7A07Glcy60IZjYkDKA4Jv
         tTkuL2Q3RFCMLDIVigYD8bpUVo1FsPy1dYSPleMP6TJZIHbWNx8VUwK4rQd+ouOWPGXe
         4oz0GU79/spi9YUPSPf19N3nx0p4C9eW0jLOSlcymwalYI4j4rsrPgUAl8QnUUv/ISeS
         mQa/GovfupArnza1+iD0NuTomzAGHDl4+vOQjxPRWRi67zRRan0fe1jhsrsjVE5lRL0d
         X4AA==
X-Forwarded-Encrypted: i=1; AFNElJ9w1ATmWQAZhWGGS8hQT9c0vCs3M4uIYA8el59EjeB1lGcs6R3cxP1h3BF9m713r8Xy/gnrcgluil7BKHmD@lists.linaro.org
X-Gm-Message-State: AOJu0YyJek7JuCt/wjChA8yvKBGE2ARj3gjYd7r0uFztOrRdiKQvKDLu
	9IV/oda117fpVkv9q9rygYTS4Ux4fB8teupSXPJYQRrBugmNemevPsDTAJ2xeVMUdA7qwGGDwxl
	AUfEOkB7mD7wsLWVbVT2TQVQQ54O/Lik=
X-Gm-Gg: Acq92OFPcwYPuesWNW1u0Hzysh+XaqLMrw9K82G7rT9kgRkcCUfeXtCR9yetfuvuJ4c
	9hA9i1VDRPe2KSI11/soDXvlyrozYWeO+XY/utDSHHKollDnX9z4MGMmBUMOpUOQzruugMUYnzh
	E8CO2/VMHk4OnY/T6vw/iNKQr9F0w9MEnmgP0CVXEtuolw5ZIxEsPo/eQD7B/w+vml3jIMtyR4o
	Gb3gH1UenISeL6QMi+Y/piLbLV658CHSc21sqRrTBU4cVyQOwyW9uzR+9tAe0M5EWPL/ZbjKQWD
	OIE9bxT627q99LRuservdoNodRPOVQ4/hodnNZwXfmw60E/c
X-Received: by 2002:a05:690e:1487:b0:65e:4b06:f89b with SMTP id
 956f58d0204a3-65e4b06fd2cmr14416343d50.51.1779277572905; Wed, 20 May 2026
 04:46:12 -0700 (PDT)
MIME-Version: 1.0
References: <20260516-jorth-syncobj-v1-0-88ede9d98a81@gmail.com>
 <c6c91de9-a34b-4b50-a3c1-d42bf7631f8e@amd.com> <CAHijbEUzWZC4GAMU6YGV42gOYkrQaMZZPiwS4Erb4H1J-fh_8Q@mail.gmail.com>
 <69dcbcc1-da58-4d34-bfb0-5c8d33b75d59@amd.com> <CAHijbEWqc2+kSkk3i_LxB2PQ6XwUetw1UkdUdXJfdv3zgKd1kA@mail.gmail.com>
 <38551bfe-75e1-4978-b57d-adc43cebc85e@amd.com> <CAHijbEWHp960qvZFoK7+9ppHAqkAR7=UQhtMUccqWzGd_pFPQA@mail.gmail.com>
 <5ee6d5af-ac48-41d7-a19f-e08a3c5b7d19@amd.com> <CAFZQkGwmeipZnvmBkcE7KhvUSMkSE=fzLBZtiMyhv3mM04Vudg@mail.gmail.com>
 <dff60378-4e47-4753-8878-feec6e1c2690@amd.com> <385a4d4f-fe22-41a7-8d4b-4dc6bc9930d3@mailbox.org>
 <1e94106a-f72e-447e-9885-2d2cc8f8e722@amd.com>
In-Reply-To: <1e94106a-f72e-447e-9885-2d2cc8f8e722@amd.com>
From: Julian Orth <ju.orth@gmail.com>
Date: Wed, 20 May 2026 13:46:00 +0200
X-Gm-Features: AVHnY4JZYLaQrAuUqg_r9R4xrt_7B8lof_FLZgmpinm1lpd54PV11HWLkp9qJk4
Message-ID: <CAHijbEWSnwm5_uTAbRDYOkMFwu+X3_xGHxjHyK-XeaO15KTGOQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: ----
Message-ID-Hash: D5APUDHVZY6OII3SKVH3MW3VFVWMZXUG
X-Message-ID-Hash: D5APUDHVZY6OII3SKVH3MW3VFVWMZXUG
X-MailFrom: ju.orth@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>, Xaver Hugl <xaver.hugl@kde.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/12] misc/syncobj: add /dev/syncobj device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D5APUDHVZY6OII3SKVH3MW3VFVWMZXUG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[mailbox.org,kde.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,lwn.net,linuxfoundation.org,arndb.de,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:-];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[juorth@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: 7CFC258CE44
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCBNYXkgMjAsIDIwMjYgYXQgMToyMeKAr1BNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBPbiA1LzIwLzI2IDEwOjEzLCBNaWNo
ZWwgRMOkbnplciB3cm90ZToNCj4gPiBPbiA1LzE5LzI2IDE4OjAwLCBDaHJpc3RpYW4gS8O2bmln
IHdyb3RlOg0KPiA+PiBPbiA1LzE5LzI2IDE3OjMxLCBYYXZlciBIdWdsIHdyb3RlOg0KPiA+Pj4g
QW0gRGkuLCAxOS4gTWFpIDIwMjYgdW0gMTU6MjkgVWhyIHNjaHJpZWIgQ2hyaXN0aWFuIEvDtm5p
Zw0KPiA+Pj4gPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT46DQo+ID4+Pj4+IDEuIFRoaXMgc2Vy
aWVzIG1ha2VzIHRoZSBhYmlsaXR5IHRvIG1hbmlwdWxhdGUgc3luY29ianMgYXZhaWxhYmxlDQo+
ID4+Pj4+IGluZGVwZW5kZW50bHkgb2YgYXR0YWNoZWQgaGFyZHdhcmUuDQo+ID4+Pj4+IDIuIEl0
IG1ha2VzIGl0IGF2YWlsYWJsZSB1bmRlciBhIGNvbnNpc3RlbnQgcGF0aCAvZGV2L3N5bmNvYmou
DQo+ID4+Pj4NCj4gPj4+PiBFeGFjdGx5IHRoYXQgaXMgYSBiaWcgbm8tZ28uIFRoaXMgaGFzIHRv
IGJlIHVuZGVyIC9kZXYvZHJpLg0KPiA+Pj4gRldJVyB1ZG1hYnVmIGlzIGFsc28gdW5kZXIgL2Rl
diBkaXJlY3RseSwgYnV0IEkgZG9uJ3QgdGhpbmsgYW55DQo+ID4+PiBjb21wb3NpdG9yIGRldmVs
b3BlciB3b3VsZCBjb21wbGFpbiBhYm91dCBhIGRpZmZlcmVudCBwYXRoLg0KPiA+Pj4gV2hhdCBh
cmUgdGhlIHJ1bGVzIGZvciB0aGF0PyBDb3VsZCB0aGlzIHNpbXBseSBiZSBwdXQgaW4gL2Rldi9k
cmkvc3luY29iaj8NCj4gPj4NCj4gPj4gVGhlIHN5bmNvYmogYXJlIGFjdHVhbGx5IHRoZSBEUk0g
c3BlY2lmaWMgd2F5IG9mIGRvaW5nIHRoaW5ncy4gVGhlIGdlbmVyYWwga2VybmVsIHdpZGUgd2F5
IGlzIHRvIHVzZSBzeW5jIGZpbGVzIChzZWUgZHJpdmVycy9kbWEtYnVmL3N5bmNfZmlsZS5jKS4N
Cj4gPj4NCj4gPj4gQnV0IHRoZXJlIGhhcyBhbHJlYWR5IGJlZW4gdG9ucyBvZiBwcm9ibGVtcyB3
aXRoIHRob3NlIHN5bmMgZmlsZXMuIEUuZy4gdGhleSBkb2Vzbid0IHN1cHBvcnQgeW91ciB1c2Ug
Y2FzZSBhdCBhbGwgc2luY2UgdGhleSBkb24ndCBoYXZlIHdhaXQgYmVmb3JlIHN1Ym1pdCBiZWhh
dmlvci4NCj4gPj4NCj4gPj4gU28gdGhlcmUgYXJlIGFscmVhZHkgd2F5cyB0byBkbyB0aGlzLCBi
dXQgdGhlIExpbnV4IGtlcm5lbCBzbyBmYXIgdG9sZCBldmVyeWJvZHkgdGhhdCB0aGlzIGlzIGZv
cmJpZGRlbi4gVGhlIERSTSBzeW5jb2JqIHdhaXQgYmVmb3JlIHNpZ25hbCBmdW5jdGlvbmFsaXR5
IGlzIG11Y2ggYmV0dGVyLCBidXQgdGhlbiBiYXNpY2FsbHkgdGhlIHNlY29uZCB0cnkgdG8gZG8g
dGhpcy4NCj4gPg0KPiA+IEknbSBub3QgcXVpdGUgc3VyZSB3aGF0IHlvdSdyZSBnZXR0aW5nIGF0
IGhlcmUsIGp1c3QgdG8gYmUgY2xlYXIgdGhvdWdoOg0KPiA+DQo+ID4gV2hpbGUgdGhlIHN5bmNv
YmogV2F5bGFuZCBwcm90b2NvbCBleHRlbnNpb24gc3VwcG9ydHMgd2FpdC1iZWZvcmUtc3VibWl0
IGJlaGF2aW91ciBhdCB0aGUgV2F5bGFuZCBwcm90b2NvbCBsZXZlbCwgaXQgZG9lc24ndCBuZWVk
IG9yIGNhdXNlIHdhaXQtYmVmb3JlLXN1Ym1pdCBiZWhhdmlvdXIgZm9yIERNQSBmZW5jZXMgaW4g
dGhlIGtlcm5lbC4gVGhlIHVzdWFsIHJ1bGVzIGFwcGx5IHRvIGZlbmNlcyBhdHRhY2hlZCB0byBz
eW5jb2JqIHRpbWVsaW5lIHBvaW50cy4gVGhlIHdhaXQtYmVmb3JlLXN1Ym1pdCBiZWhhdmlvdXIg
YXQgdGhlIFdheWxhbmQgcHJvdG9jb2wgbGV2ZWwgY29tZXMgZnJvbSBhbGxvd2luZyBzdWJtaXQg
YmVmb3JlIGEgZmVuY2UgaXMgYXR0YWNoZWQgdG8gdGhlIGFjcXVpcmUgdGltZWxpbmUgcG9pbnQu
DQo+DQo+IFllYWggSSBrbm93LiBJJ20gb25lIG9mIHRoZSBwZW9wbGUgd2hvIGNhbWUgdXAgd2l0
aCB0aGUgaWRlYSBvZiBkb2luZyB3YWl0IGJlZm9yZSBzaWduYWwgdGhpcyB3YXkgaW4gdGhlIGRy
bV9zeW5jb2JqLg0KPg0KPiBXaGF0IEkgd2FudGVkIHRvIHNheSBpcyB0aGF0IGEgbG90IG9mIHBl
b3BsZSB1c2VkIHRoZSBkbWFfZmVuY2UgdG8gaW1wbGVtZW50IHdhaXQgYmVmb3JlIHNpZ25hbCBi
ZWZvcmUgYW5kIGdvdCBhIGJsb29keSBub3NlIGZyb20gdGhhdC4NCj4NCj4gPiAoSXQgdG9vayBt
ZSBhIHdoaWxlIHRvIHJlYWxpemUgdGhpcyBkaXN0aW5jdGlvbiwgYmVmb3JlIHdoaWNoIEkgbWlz
dGFrZW5seSB0aG91Z2h0IHRoZSBrZXJuZWwncyBETUEgZmVuY2UgcnVsZXMgd291bGQgcHJvaGli
aXQgd2FpdC1iZWZvcmUtc3VibWl0IGJlaGF2aW91ciBhdCB0aGUgV2F5bGFuZCBwcm90b2NvbCBs
ZXZlbCBhcyB3ZWxsKQ0KPg0KPiBUaGlzIGlzIHdoYXQgc3VycHJpc2VkIG1lLg0KPg0KPiBUaGUg
ZHJtX3N5bmNvYmogaW1wbGVtZW50YXRpb24gc29sdmVkIHRoZSB3YWl0IGJlZm9yZSBzaWduYWwg
Zm9yIHRoZSBrZXJuZWwsIGJ1dCBteSBsYXN0IGZlZWRiYWNrIHdhcyB0aGF0IHdlIGJhc2ljYWxs
eSBqdXN0IG1vdmVkIHRoZSBpc3N1ZSB0byB1c2Vyc3BhY2UgYW5kIFdheWxhbmQgY29tcG9zaXRv
cnMgd291bGQgaGF2ZSBxdWl0ZSBzb21lIG92ZXJoZWFkIHRvIGltcGxlbWVudCBpdCBjb3JyZWN0
bHkuDQo+DQo+IFRoYXQgY29tcG9zaXRvcnMgbm93IHVzZSBldmVudGZkIHRvIHNpbXBsaWZ5IHRo
YXQgd2FzIG5ld3MgdG8gbWUgYnV0IG1ha2VzIHRvdGFsbHkgc2Vuc2UgaW4gaGluZHNpZ2h0Lg0K
Pg0KPiBCdXQgYW55d2F5LCB3ZSBuZWVkIHRvIHNvbWVob3cgc2ltcGxpZnkgdGhlIGRybV9zeW5j
b2JqIC0+IGV2ZW50ZmQgdXNhZ2UgaW4gdGhlIGNvbXBvc2l0b3IuDQoNClRoYXQgaXMgbm90IHRo
ZSBvbmx5IHVzYWdlIGluIHRoZSBjb21wb3NpdG9yLiBDb21wb3NpdG9ycyB1c2UgYWxsIG9mDQp0
aGUgZm9sbG93aW5nIG9wZXJhdGlvbnMgb24gc3luY29ianM6DQoNCi0gY3JlYXRpbmcgc3luY29i
anMNCi0gd2FpdGluZyBmb3IgcG9pbnRzIHN5bmNocm9ub3VzbHkNCi0gc2lnbmFsaW5nIHBvaW50
cyB3aXRob3V0IGEgc3luYyBmaWxlDQotIHF1ZXJ5aW5nIHBvaW50cw0KLSB0cmFuc2ZlcnJpbmcg
c3luYyBmaWxlcyBiZXR3ZWVuIHBvaW50cw0KLSBleHBvcnRpbmcgc3luYyBmaWxlcw0KLSBpbXBv
cnRpbmcgc3luYyBmaWxlcw0KDQpXaGljaCB5b3UgY2FuIHNlZSBieSBsb29raW5nIGF0IHRoZSB1
c2Vyc3BhY2UgY29kZSBsaW5rZWQgaW4gdGhlIGNvdmVyDQpsZXR0ZXIuIEJ5cGFzc2luZyB0aGUg
aGFuZGxlIGluIG9uZSBpb2N0bCB3b3VsZCBnYWluIGNvbXBvc2l0b3JzDQpub3RoaW5nIHNpbmNl
IHRoZXkgd291bGQgc3RpbGwgaGF2ZSB0byBjb252ZXJ0IHRvIGhhbmRsZXMgYW5kIG1hbmFnZQ0K
dGhlaXIgbGlmZXRpbWUgZm9yIGFsbCBvdGhlciBpb2N0bHMuDQoNCj4gVGhhdCByZXF1aXJlbWVu
dCBpcyBwZXJmZWN0bHkganVzdGlmaWVkIGFuZCBhdm9pZGluZyBpbXBvcnRpbmcgdGhlIGRybV9z
eW5jb2JqIGZkIGludG8gYW55IERSTSBkcml2ZXIgc2hvdWxkIGFjdHVhbGx5IGJlIHJlYWxseSBl
YXN5IHRvIGltcGxlbWVudC4NCg0KVGhhdCBpcyB3aGF0IHRoaXMgc2VyaWVzIGRvZXMuDQoNCj4N
Cj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
