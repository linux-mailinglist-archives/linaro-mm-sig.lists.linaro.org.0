Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHstHfTcHWpsfQkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 01 Jun 2026 21:26:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CD56249B4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 01 Jun 2026 21:26:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DE68C4098E
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  1 Jun 2026 19:26:42 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	by lists.linaro.org (Postfix) with ESMTPS id CA955404CB
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Jun 2026 19:26:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=Hu6N4t5R;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of xuehaohu@google.com designates 209.85.167.44 as permitted sender) smtp.mailfrom=xuehaohu@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5aa5cf787cdso39e87.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 01 Jun 2026 12:26:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780341993; cv=none;
        d=google.com; s=arc-20240605;
        b=K3my4j+uNYQlVUljmAr194hdEqr70Gq5xTDKnx0yuc3nM1Mpqc7bfQijkU2x6QZEsj
         H7nxVsgrqGvihj8MuIgOF466R1tmiVyUdFbWdPhTiYcMbe0lQ1zbvPobr9TjGW/CN1II
         hS7PCEIPlY1enupvhX4QO0Sw4cRIPB5Jbg7tPPhEJyvK38DoDst0nA630RlKWW8E26M0
         OafvvVUN+1oCWrwQUsckP7te/E/kRY1OAChZ3NvZhbQ0VBWUlVa/Y6hq/G3Xkn/kj1PM
         5lmwSeGDPxUCMFoKDu3k0HFecDbLTK1UO/YsGUb/hJzVOawK8InnAsE7vwDu8KkemmnU
         MAyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=RUETtszvlgjxvwcIcmAnMCzPRiN6e9NnLidclBHMCNQ=;
        fh=IOshjhriNdHTCNDtB16KlbszFSKOVxmizLvfYlwOeZg=;
        b=d9resxD1UI17wAic1zwvqUtL03xTFO1MJpa6DnXLnuaCBjtU88HS9kz9JEjGeQcx70
         qMIvIh3bQwXbsmXYksknSP4Cx4ysAPGK2viOPSO2hZokSkw5FWxwd9fts9lZDO7VXhO5
         8+cJN2NKIgoR222Y/pZ6JvLrvIqbPPbjBj5jnMOapq4lxkBYcDe6TkmtH80ESxmj9LMB
         zVsJMvo9SH5pjaH73w0NbumMeGjHtxjOyjkL+OfOYm9gqs0913yegltAY9VSYtOsS78a
         j43CmHfgnsNPQ7MKwTP631Q2/Y3IajTMlD34HerGNf6zqxRXaYPAt8W1rNQr0a3klaSl
         A3OQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1780341993; x=1780946793; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RUETtszvlgjxvwcIcmAnMCzPRiN6e9NnLidclBHMCNQ=;
        b=Hu6N4t5RQtCI3nLP24iEIVbrVmvMG94TjVSIedNiX1vh+Cyu41a9dgOfJcztpSIKqv
         DYVN71v0tTbNUtgUXZT6+x+XuBoOdo25yYc7/hrW47tu0uLtXI+oFyyJUs7CC8YsqchH
         EA/w4QvLyCHwzJsOVNiR6gCpESZKw19781t5/Hcw2TSTiy+Lm3Ymqb6YZ4ae0hMJItCe
         t11ivrzG09dUX1Oz8D2iGe32nqg/KrOy9tBIqof6N8a9BkDLhdOuirWuoWqFAB4tiL3f
         J5QnPD6Fng5mnZldjWK1GZTxspuOAWWSl4zobWrNs0S3jNpSmcC1smArBvJiui58AhL2
         +1Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780341993; x=1780946793;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RUETtszvlgjxvwcIcmAnMCzPRiN6e9NnLidclBHMCNQ=;
        b=nMsKALarb1tZoa71ci6EmRSzpej6TxOQRvwC3NyZRX2hNeyfNVgLqGyXpK6e0kCOm1
         WWMPZY7y4qxy/eRFCx6ODvCM+azrWkjSmvrhUBDgSmK/vGXf/VXlmyHopE/FNB8nC5dw
         wbX2TParl/R33Cdi0PM+lMCmsUG0AfJoeC9uf5GO42PudC+H3tkIr27a4xFOxmjBCF9v
         wOih8+R12bM0C86Y933hVLXETTU85+miuZMr+u54/+nabKthyxTL3bkTXaCOLU7RG5PK
         NE5i+bhp1EDCyPyBuYr14iKMKu42L/GN9RSQIQ39LWvS7xdtt9sbV8XvDwDbAIhxYYdP
         cuMA==
X-Forwarded-Encrypted: i=1; AFNElJ/77NgwmHEQr2JuSguHy1hwTgK1sMV9p9McyRgZnNyEzKNNe9ASDp4wcpKyxz8WZOoS3sOzbw3co6HMD0Ri@lists.linaro.org
X-Gm-Message-State: AOJu0YxjI19WKh4PYnYwsXlRNi/rbeCF4kCG5PRf4bqK+8Y4HB3lv72k
	9ByzkleqoO1A9PmoV/7Ij3GLm9xS2q4rLEKQIoMlKhw2VIIetY+fhRRRFvyx7/PJfRAmBk9Y8Xx
	bHkQ9TMmzr+tIXeo4rBIuFNwEbCX5XFsKlavGrX0=
X-Gm-Gg: Acq92OE/DcFEQDhFBNb36trRYuR9OtKTIrasTaFQxAYc/fK6wWm3/LRQxrypwuaFifO
	0vFqBYpMALxP8KholkZFhvJk4GV1OWOA8dW6khVF4n204szZLPOmXkbhYAelfcv4pZsHwJABMSa
	XnsXgBtdMJ45L8O3Y099e7Shp/dlq25yQ5tpBUqVwuY6rWOmnLW8p+VPaRRajVuiwNrAKTAH3BC
	hdAD19GU5hRNBtZwEVSq1iyXd2JGiU1lr8h5U2uORO+tP+EAbB4+V2t9Q5VJu5zp1HssVQrGNdM
	1s8miWBDnOuV6sEeH+DCN45rkDLqrTMmhBspdedbSpolMG4=
X-Received: by 2002:a05:6512:3a8d:b0:5a2:9b28:d64a with SMTP id
 2adb3069b0e04-5aa75b3495amr52247e87.8.1780341992156; Mon, 01 Jun 2026
 12:26:32 -0700 (PDT)
MIME-Version: 1.0
References: <20260528191658.2506362-1-xuehaohu@google.com> <20260601175252.GD2487554@ziepe.ca>
In-Reply-To: <20260601175252.GD2487554@ziepe.ca>
From: David Hu <xuehaohu@google.com>
Date: Mon, 1 Jun 2026 15:26:19 -0400
X-Gm-Features: AVHnY4KmXOz7naPVQt3RnYf5-sps0yuGM1iGSV6Zi0v2ewCpGm4R4O7z_6CO-gk
Message-ID: <CAPd9Lg8Um=0LJWB-QCqLyFksX=dTsu3hwuVXK9_CGRWTVBJppQ@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
X-Spamd-Bar: ----
Message-ID-Hash: XIX3GYW4LWGQCMODZHRTXSDOCKPT4R2L
X-Message-ID-Hash: XIX3GYW4LWGQCMODZHRTXSDOCKPT4R2L
X-MailFrom: xuehaohu@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Nicolin Chen <nicolinc@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, jmoroni@google.com, praan@google.com, stable@vger.kernel.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4] dma-buf: Fix silent overflow for phys vec to sgt
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XIX3GYW4LWGQCMODZHRTXSDOCKPT4R2L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.523];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,ziepe.ca:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 00CD56249B4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBKdW4gMSwgMjAyNiBhdCAxOjUy4oCvUE0gSmFzb24gR3VudGhvcnBlIDxqZ2dAemll
cGUuY2E+IHdyb3RlOg0KPg0KPiBPbiBUaHUsIE1heSAyOCwgMjAyNiBhdCAwNzoxNjo1OFBNICsw
MDAwLCBEYXZpZCBIdSB3cm90ZToNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYtbWFwcGluZy5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYtbWFwcGluZy5jDQo+ID4g
aW5kZXggNzk0YWNmZjI1NDZhLi4xYWFiYzBlZTcwYmIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYtbWFwcGluZy5jDQo+ID4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYtbWFwcGluZy5jDQo+ID4gQEAgLTUxLDYgKzUxLDkgQEAgc3RhdGljIHVuc2lnbmVkIGlu
dCBjYWxjX3NnX25lbnRzKHN0cnVjdCBkbWFfaW92YV9zdGF0ZSAqc3RhdGUsDQo+ID4gICAgICAg
ICAgICAgICBuZW50cyA9IERJVl9ST1VORF9VUChzaXplLCBVSU5UX01BWCk7DQo+ID4gICAgICAg
fQ0KPiA+DQo+ID4gKyAgICAgaWYgKFdBUk5fT05fT05DRShuZW50cyA+IFVJTlRfTUFYKSkNCj4g
PiArICAgICAgICAgICAgIHJldHVybiAwOw0KPg0KPiBUaGUgV0FSTiBzZWVtcyBhIGJpdCBtdWNo
LCBidXQgaWYgeW91IGhhdmUgaXQgdGhlbiBpdCBzaG91bGQgYmUNCj4gYXJyYW5nZWQgc28gdGhl
IGNhbGxlciB1bHRpbWF0ZWx5IGZhaWxzLg0KPg0KPiBCdXQgb3RoZXJ3aXNlIEkgdGhpbmsgY29y
cmVjdGluZyB0aGUgdHlwZXMgaXMgYSBnb29kIGlkZWENCj4NCj4gSmFzb24NCkhpIEphc29uLA0K
DQpUaGFuayB5b3UgZm9yIHRoZSBmZWVkYmFjay4gVGhhdCBtYWtlcyBjb21wbGV0ZSBzZW5zZS4g
SSB3aWxsIHJlbW92ZQ0KV0FSTl9PTl9PTkNFKCkgdG8gYXZvaWQgZG1lc2cgbm9pc2UsIGFuZCBp
bnN0ZWFkIGFkZCBhbiBleHBsaWNpdCBjaGVjaw0KaW4gZG1hX2J1Zl9waHlzX3ZlY190b19zZ3Qo
KSB0byBmYWlsIHdpdGggLUVJTlZBTCBpZiBjYWxjX3NnX25lbnRzKCkNCnJldHVybnMgMCAob24g
b3ZlcmZsb3cpLg0KDQpJIHdpbGwgc2VuZCBvdXQgdjUgd2l0aCB0aGVzZSBjaGFuZ2VzIHNob3J0
bHkuDQoNClJlZ2FyZHMsDQpEYXZpZA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
