Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CED8895BA1
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Apr 2024 20:22:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4F4A93F973
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Apr 2024 18:22:23 +0000 (UTC)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by lists.linaro.org (Postfix) with ESMTPS id 21DCC3F973
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Apr 2024 18:22:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=ijgma6TP;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.179 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-dd161eb03afso4833537276.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Apr 2024 11:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712082140; x=1712686940; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ia/tbJPIdeMfQ6ZZ+vaPcpfh03Y3DgIKVILN8aSZC/Q=;
        b=ijgma6TP2DXjx6MC7Wys2V4I/yOIzGDFvOPcgzldnr0NlCYwTk/OewSsywjbBfSTw8
         8sBr4d6j7eShY4EKHUd7ONzmeWf7nmZOFqAPKS3EPdGxIlGPq+Ho7LVeebsWM78wZxSn
         GFqMtaae4Rwba0/ItWajT9BYf63k3LyMyauSrOPjOa1USGXENZ8saVNlH3kEM1ryQKBx
         lK19yNu5ypiYbrHl4l5oFjziKv115n2QAnBXhXwb43dONwZtH3UBuP67bZ6s5RbdNNxp
         HD4FiCt8Mm877zuQ2cQ/Na0m3J2zQ9dZAmmW5Z5VqrhcuKfSTHz/qw5owd4pCRIKqRBL
         G4sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712082140; x=1712686940;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ia/tbJPIdeMfQ6ZZ+vaPcpfh03Y3DgIKVILN8aSZC/Q=;
        b=hljnB6XtyqvoEVMcV/6/KjEZJwN4AuAW5BlLo50CRuuQRuRShrKCxeXiSfloavU1wn
         tDKavN+qF2CRGnqAteCXRFV0X3ADMHbmBZJhJp5pXLHfXol3/LTbbCE14sz9MkoGBYuV
         0jSbx9dxym2KNWlKnaDGmpT6ZqWiG2g7k0qj7vQgeQy3cB/GsVxihnBYbyOjENt131cB
         c4csRGtM0FklIqJhO2fTPPtsYZeB1SiVhnV0M4zDfCEj7zEv5efLyZhMSHKb1Ck44VDw
         DR73oek+Fdmjkj2Al9kCxBkr085rt/qShHtbbTVlQI1IAFOdLTYqWQd4ymTKgY4j6g51
         xCQw==
X-Forwarded-Encrypted: i=1; AJvYcCV1m2yM0oOB8lOvsf/wYUs3Q3hB/xylJXgq7IaZzcPdjAr018sYqtuJkZ4Vj44kYwhgk46jQlBKJv4LMHFWTK58UXBZCcaUpMy+C4tEigg=
X-Gm-Message-State: AOJu0YwmkLPHd2TmUpwU6W43UvNVm/Idfm3kI7jOX5dGFamyIGvfZf/6
	ht5etnNTIZZNu65FYKvkfEbDIlUUm3FUoXF94DWOuMP9FV+8V75WDm2DnS1YCgoAKIbhAFaDJJD
	XMB7CXrhCEPZDYjUFhnfp1Wq/9A7OcF0LHCwf
X-Google-Smtp-Source: AGHT+IELVyAijo8pj3GcLmB3cCFiU9WkTzB0n0l7/6pGqPaQ1F3PpSSJA0zcslPbroERdF7pfvQPJq16K7fY/gzJvBE=
X-Received: by 2002:a25:ad12:0:b0:dc2:466a:23bd with SMTP id
 y18-20020a25ad12000000b00dc2466a23bdmr11110164ybi.54.1712082140449; Tue, 02
 Apr 2024 11:22:20 -0700 (PDT)
MIME-Version: 1.0
References: <20240327022903.776-1-justinjiang@vivo.com> <5cf29162-a29d-4af7-b68e-aac5c862d20e@amd.com>
 <cc7defae-60c1-4cc8-aee5-475d4460e574@vivo.com> <23375ba8-9558-4886-9c65-af9fe8e8e8b6@amd.com>
In-Reply-To: <23375ba8-9558-4886-9c65-af9fe8e8e8b6@amd.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 2 Apr 2024 11:22:08 -0700
Message-ID: <CABdmKX2Kf4ZmVzv3LGTz2GyP-9+rAtFY9hSAxdkrwK8mG0gDvQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Queue-Id: 21DCC3F973
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.179:from];
	URIBL_BLOCKED(0.00)[amd.com:email,mail-yb1-f179.google.com:helo,mail-yb1-f179.google.com:rdns];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: JESYWYBOYUATGQCZPFUSNHEZLIZJ5SDN
X-Message-ID-Hash: JESYWYBOYUATGQCZPFUSNHEZLIZJ5SDN
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: zhiguojiang <justinjiang@vivo.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dmabuf: fix dmabuf file poll uaf issue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JESYWYBOYUATGQCZPFUSNHEZLIZJ5SDN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBcHIgMiwgMjAyNCBhdCAxOjA44oCvQU0gQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gQW0gMDIuMDQuMjQgdW0gMDg6NDkgc2No
cmllYiB6aGlndW9qaWFuZzoNCj4gPj4gQXMgZmFyIGFzIEkgY2FuIHNlZSB0aGF0J3Mgbm90IGJl
Y2F1c2Ugb2YgdGhlIERNQS1idWYgY29kZSwgYnV0DQo+ID4+IGJlY2F1c2UgeW91IGFyZSBzb21l
aG93IHVzaW5nIHRoaXMgaW50ZXJmYWNlIGluY29ycmVjdGx5Lg0KPiA+Pg0KPiA+PiBXaGVuIGRt
YV9idWZfcG9sbCgpIGlzIGNhbGxlZCBpdCBpcyBtYW5kYXRvcnkgZm9yIHRoZSBjYWxsZXIgdG8g
aG9sZA0KPiA+PiBhIHJlZmVyZW5jZSB0byB0aGUgZmlsZSBkZXNjcmlwdG9yIG9uIHdoaWNoIHRo
ZSBwb2xsIG9wZXJhdGlvbiBpcw0KPiA+PiBleGVjdXRlZC4NCj4gPj4NCj4gPj4gU28gYWRkaW5n
IGNvZGUgbGlrZSAiaWYgKCFmaWxlX2NvdW50KGZpbGUpKSIgaW4gdGhlIGJlZ2lubmluZyBvZg0K
PiA+PiBkbWFfYnVmX3BvbGwoKSBpcyBjZXJ0YWlubHkgYnJva2VuLg0KPiA+Pg0KPiA+PiBNeSBi
ZXN0IGd1ZXNzIGlzIHRoYXQgeW91IGhhdmUgc29tZSB1bmJhbGFuY2VkDQo+ID4+IGRtYV9idWZf
Z2V0KCkvZG1hX2J1Zl9wdXQoKSBzb21ld2hlcmUgaW5zdGVhZC4NCj4gPj4NCj4gPj4NCj4gPiBI
aSBDaHJpc3RpYW4sDQo+ID4NCj4gPiBUaGUga2VybmVsIGRtYV9idWZfcG9sbCgpIGNvZGUgc2hv
dW5kIG5vdCBjYXVzZSBzeXN0ZW0gY3Jhc2hlcyBkdWUgdG8NCj4gPiB0aGUgdXNlciBtb2RlIHVz
YWdlIGxvZ2ljYWwgaXNzdWVzID8NCj4NCj4gV2hhdCB1c2VyIG1vZGUgbG9naWNhbCBpc3N1ZXMg
YXJlIHlvdSB0YWxraW5nIGFib3V0PyBDbG9zaW5nIGEgZmlsZQ0KPiB3aGlsZSBwb2xsaW5nIG9u
IGl0IGlzIHBlcmZlY3RseSB2YWxpZC4NCj4NCj4gZG1hX2J1Zl9wb2xsKCkgaXMgY2FsbGVkIGJ5
IHRoZSBmaWxlc3lzdGVtIGxheWVyIGFuZCBpdCdzIHRoZSBmaWxlc3lzdGVtDQo+IGxheWVyIHdo
aWNoIHNob3VsZCBtYWtlIHN1cmUgdGhhdCBhIGZpbGUgY2FuJ3QgYmUgY2xvc2VkIHdoaWxlIHBv
bGxpbmcNCj4gZm9yIGFuIGV2ZW50Lg0KPg0KPiBJZiB0aGF0IGRvZXNuJ3Qgd29yayB0aGVuIHlv
dSBoYXZlIHN0dW1ibGVkIG92ZXIgYSBtYXNzaXZlIGJ1ZyBpbiB0aGUgZnMNCj4gbGF5ZXIuIEFu
ZCBJIGhhdmUgc29tZSBkb3VidHMgdGhhdCB0aGlzIGlzIGFjdHVhbGx5IHRoZSBjYXNlLg0KPg0K
PiBXaGF0IGlzIG1vcmUgbGlrZWx5IGlzIHRoYXQgc29tZSBkcml2ZXIgbWVzc2VzIHVwIHRoZSBy
ZWZlcmVuY2UgY291bnQNCj4gYW5kIGJlY2F1c2Ugb2YgdGhpcyB5b3Ugc2VlIGFuIFVBRi4NCj4N
Cj4gQW55d2F5IGFzIGZhciBhcyBJIGNhbiBzZWUgdGhlIERNQS1idWYgY29kZSBpcyBjb3JyZWN0
IHJlZ2FyZGluZyB0aGlzLg0KPg0KPiBSZWdhcmRzLA0KPiBDaHJpc3RpYW4uDQoNCkkgdHJpZWQg
dG8gcmVwcm9kdWNlIHRoaXMgcHJvYmxlbSBidXQgSSBjb3VsZG4ndC4gV2hhdCBJIHNlZSBpcyBh
IHJlZg0KZ2V0IHRha2VuIHdoZW4gcG9sbCBpcyBmaXJzdCBjYWxsZWQuIFNvIHN1YnNlcXVlbnRs
eSBjbG9zaW5nIHRoZSBmZCBpbg0KdXNlcnNwYWNlIHdoaWxlIGl0J3MgYmVpbmcgcG9sbGVkIGRv
ZXNuJ3QgdGFrZSB0aGUgcmVmY291bnQgYWxsIHRoZQ0Kd2F5IHRvIDAuIFRoYXQgaGFwcGVucyB3
aGVuIGRtYV9idWZfcG9sbF9jYiBmaXJlcywgZWl0aGVyIGR1ZSB0byBhbg0KZXZlbnQgb3Igd2hl
biB0aGUgZmQgaXMgY2xvc2VkIHVwb24gdGltZW91dC4NCg0KSSBkb24ndCByZWFsbHkgc2VlIGhv
dyB0aGlzIGNvdWxkIGJlIHRyaWdnZXJlZCBmcm9tIHVzZXJzcGFjZSBzbyBJIGFtDQphbHNvIHN1
c3BpY2lvdXMgb2YgZG1hX2J1Zl9nZXQvcHV0Lg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
