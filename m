Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1cgUOKPvRWqaGwsAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Jul 2026 06:57:07 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD1A6F37C7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Jul 2026 06:57:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=NebZ8yLo;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CBFC640AD3
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Jul 2026 04:57:05 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	by lists.linaro.org (Postfix) with ESMTPS id 7D13F3F9BF
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Jul 2026 04:56:54 +0000 (UTC)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5aeb688ae83so19470e87.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Jul 2026 21:56:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782968213; cv=none;
        d=google.com; s=arc-20260327;
        b=Y3wP21xTUpZ+sJS1wSwK6Ufljz15D6XiZqtjQ1vQS0HIjHDHWeP94C5dM7bLmVU82P
         Xhlh6P6k3mlWUEjF+3+n3kKBM5JM27UVrsk2innQ9kxESWDs0rklkvQXyrI2Jd81YTr7
         z5PclCga15qg5q0cox4NyiVr6AGrSC7t58RclIiSNhvWs6v2MdA8nIKr3tDAALFe/w+0
         CtxuLbUVAVT+eXWd0QLAEknA3gejZynaTrTDYvOPfwfQXL7FNnRXvCobC0lqzwwB8qk3
         zJYAGAs2ZEgZRPqrFF2lpEjS3RGRgs4DVDTTuWeQB3DyVq1UbBAuBBBZu/5lKt3IEZeh
         FYEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=R/pb0b0doa3XFteGoKySEQfP8Mo6hx3U4+0voSqDAH0=;
        fh=wI3Rfm1bis9q1weT5oedpIGoOpLIjRmJ7HCjY6BMSSs=;
        b=Inz8ZYo0Z8jKrj7OZoA+8yfixoIhqjCf/AbATXobuyTwqoCpX+mpr1GWYSC4DRtNKP
         BTRKGH49efa1TEcPaB5vJoKhcZlgWHT2uX7tdI/psSK7AGnRl1kaa8UJQgtgwFy8thyi
         CAlNiUT5uX9dLsu9K7bjaE3NXX/xO1tjRdMZGtJqfSJt1Hko4aECCG/UTBbdxcpGxNyn
         7bqMJ22HmrZ61/UujXtdRWTwub3WxVpDuQ7Yu++Dvm9RIzVlkzv8ji9fbeHxvPYIXWxG
         mJhMONeVZPj1g29hwB8uD3XcX9UM9weEWlD6c4meiTVtRPMIZCvRvmZRDNAJIKch1LIF
         pmsQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1782968213; x=1783573013; darn=lists.linaro.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=R/pb0b0doa3XFteGoKySEQfP8Mo6hx3U4+0voSqDAH0=;
        b=NebZ8yLop0PLoTUpwD/Vaonx2sRS5J0vBummIt/CWtAy5cFh8T9bAVdBlBNJxJFslu
         OYEizG0J29OwHJGhU8HjXkQXgTb7E4oE7TzqtIONax0IHVlFcxYGGHBId2qx9QGE7Fld
         2pWmXM/mT2qK2LhvkzVaibhBORm7ArmiosRI+w0Hq9eO/Mw5lafkrBkMHTuhH5NSdKZL
         UlO3MUaUOeBNg/1RZ45hGSHoV33+8o1K3RnLdqFslvy3eWirWQhHontq+ULRTVkCJ42p
         UGJQJAr31Nxmy8brhBSRMHYwpPdxUL0gw7rthU/FHgwJ8a4gVxmaenguzGBFs2Glm7GP
         38Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782968213; x=1783573013;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=R/pb0b0doa3XFteGoKySEQfP8Mo6hx3U4+0voSqDAH0=;
        b=Jha8SmU3ssDyjW8mW6xO6uyFB2/f7agFsuf8/OKm5da/mpcDv49s1yx5spAdkDmhz4
         3ECma41wTeIv/ECvaJWIV+kEnfz/WvAMSLu+lWDv9CBap+Wl9QiSUxYJO8n1uIV+knC6
         ODO2U6kNkxIAueReE6NV7mNq90hsDWkXwk8By6HMczYU9pSpCvgDhKR+65roci5i3zf9
         HFN0O/H3Z00RyQNAWPE6xqlCpuvmx+fkpyWi3O4iuEVBpjVmwuifryWHZVzrxfha+X1V
         AOCEe77VUC+AhIrM2/hX/hHqRk7GxE/XKaDxkKNmXjfdNZwNh32iYT2I8e5bDkSuQhKq
         Wcgg==
X-Forwarded-Encrypted: i=1; AHgh+RqLdVsj2NDYDo6YEIMjPKm6ZwLwZWna+gDOGydJ3aBmMXXcF22/nQ7Eut3Zpd9LiJQfWLmFEnTGBFwmy5kM@lists.linaro.org
X-Gm-Message-State: AOJu0YyIdIXQevYcY0Qc5gS8lUKe6CYleSqFwdkVbj6qKJplQQyaZqVL
	6ao6Bf9hlySCM/81T2VkroVIIgSyy/L2rWHaYipCFAOirM7U03b+pfeARFsr3lceJL0s58ceWKT
	yHgfP7eRByrThJz0kVxzc5/XIcbjzzSkcDwH1OWg=
X-Gm-Gg: AfdE7ckGXAoDZRjjhNWCmW/kl32YUlGBsA937KmvMeuUOdDlWJmqgLcyRsGzMVMInlS
	E+9b79D45lFTcLASxeB+iiv+Yq5xX5UxwEFIlKp0L4u/aMHtKh8Kp1AqnQuCVJ4YFnC1JOZmDb1
	7x1mI7SkXZvtOtiX0K+ltevFUrKx6OEIhfg7+HW82T7HxMZVSom4/rjtjAN8tteA4gJ+VSQOjXS
	b5HKoBhupicAQC1M96dEXt2pFGw/TqV83SEQnaS9GHBFbnWUjM+ZPOfcSXMkAfZ8D6A6DuNzifJ
	r12F4o2021wI3lV8DAulpWjA5N16Rg==
X-Received: by 2002:a05:6512:2243:b0:5ae:b843:9470 with SMTP id
 2adb3069b0e04-5aecc237a55mr33635e87.5.1782968212825; Wed, 01 Jul 2026
 21:56:52 -0700 (PDT)
MIME-Version: 1.0
References: <20260621222130.1667453-1-xuehaohu@google.com> <20260623015459.1153884-1-xuehaohu@google.com>
 <20260623094446.4a8fc2ed@pumpkin> <ajryxMaT5evDUxaq@google.com>
 <20260623235350.6540eaa2@pumpkin> <20260630124252.GD7525@ziepe.ca>
In-Reply-To: <20260630124252.GD7525@ziepe.ca>
From: David Hu <xuehaohu@google.com>
Date: Thu, 2 Jul 2026 00:56:40 -0400
X-Gm-Features: AVVi8CdtQ5k1Gu0I7l3KP5nC_hRlM4qrUkGZrb3FkW53eA2H-q-z2clu4KZkrHc
Message-ID: <CAPd9Lg9uY1RZvYUtcbKUg=VdWM61M2f3aqmS5veUg_8M_Ce80g@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
X-Spamd-Bar: ----
Message-ID-Hash: JU4DL4KKCJNMIBIGSNLNRHOQWH4HEJGC
X-Message-ID-Hash: JU4DL4KKCJNMIBIGSNLNRHOQWH4HEJGC
X-MailFrom: xuehaohu@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: David Laight <david.laight.linux@gmail.com>, Pranjal Shrivastava <praan@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Nicolin Chen <nicolinc@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, jmoroni@google.com, kpberry@google.com, chriscli@google.com, sashiko-bot@kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: Split sgl into page-aligned 2G chunks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JU4DL4KKCJNMIBIGSNLNRHOQWH4HEJGC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jgg@ziepe.ca,m:david.laight.linux@gmail.com,m:praan@google.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:nicolinc@nvidia.com,m:leon@kernel.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:alex@shazbot.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:iommu@lists.linux.dev,m:jmoroni@google.com,m:kpberry@google.com,m:chriscli@google.com,m:sashiko-bot@kernel.org,m:stable@vger.kernel.org,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_CC(0.00)[gmail.com,google.com,linaro.org,amd.com,nvidia.com,kernel.org,intel.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email,ziepe.ca:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4FD1A6F37C7

T24gVHVlLCBKdW4gMzAsIDIwMjYgYXQgODo0MuKAr0FNIEphc29uIEd1bnRob3JwZSA8amdnQHpp
ZXBlLmNhPiB3cm90ZToNCj4NCj4gT24gVHVlLCBKdW4gMjMsIDIwMjYgYXQgMTE6NTM6NTBQTSAr
MDEwMCwgRGF2aWQgTGFpZ2h0IHdyb3RlOg0KPg0KPiA+ID4gSWYgd2UgcmVzdHJpY3QgaW5jb21p
bmcgZG1hYnVmIHRyYW5zZmVycyB0byBmaXQgd2l0aGluIFZGUy1jZW50cmljDQo+ID4gPiBsaW1p
dHMgKDJHQiksIHdlIGltcG9zZSB1bm5lY2Vzc2FyeSBvdmVyaGVhZCBvbiB0aGUgUkRNQSBzdGFj
aywgZm9yY2luZw0KPiA+ID4gaXQgdG8gbWFuYWdlIGEgc2lnbmlmaWNhbnRseSBoaWdoZXIgbnVt
YmVyIG9mIG1lbW9yeSByZWdpc3RyYXRpb25zLiBCeQ0KPiA+ID4gY2xlYW5seSBzcGxpdHRpbmcg
dGhlc2UgbWFzc2l2ZSBjb250aWd1b3VzIGRldmljZSBidWZmZXJzIGludG8NCj4gPiA+IHBhZ2Ut
YWxpZ25lZCBTR0wgZW50cmllcywgd2UgZGlyZWN0bHkgaW1wcm92ZSB0aGUgZWZmaWNpZW5jeSBv
ZiBQMlANCj4gPiA+IHRyYW5zZmVycyBhbmQgbWVtb3J5IHJlZ2lzdHJhdGlvbi4NCj4gPg0KPiA+
IEJ1dCBhIGRpdmlkZSBieSAnNEcgLSBQQUdFX1NJWkUnIGlzIGFsc28gbm9uLXRyaXZpYWwgYW5k
IChJIHRoaW5rIGFmZmVjdHMNCj4gPiBhIGxvdCBvZiBpbykgd2hlbiB0aGUgcXVvdGllbnQgaXMg
YWx3YXlzIDEuDQo+ID4gU3BsaXR0aW5nIGludG8gMkcgY2h1bmtzIGlzIGEgbG90IGNoZWFwZXIu
DQo+DQo+IERvZXNuJ3QgbWF0dGVyIHRoaXMgaXNuJ3QgZmFzdCBwYXRoIHN0dWZmLiBJdCBpcyBi
ZXR0ZXIgdG8gdXNlIGZld2VyDQo+IFNHTCBlbnRyaWVzLCBJSE1PLg0KPg0KPiA+ID4gU2luY2Ug
dGhpcyBjaGFuZ2UgZG9lc24ndCBzZWVtIHRvIGhhdmUgYSBuZWdhdGl2ZSBpbXBhY3Qgb24gc3Rh
bmRhcmQgZmlsZQ0KPiA+ID4gSS9PIG9yIGJyZWFrIGV4aXN0aW5nIFZGUyBjb25zdHJhaW50cywg
SSdtIGN1cmlvdXMgd2h5IHdlIHNob3VsZG4ndA0KPiA+ID4gc3VwcG9ydCBzcGxpdHRpbmcgdGhl
c2UgPjRHQiBQMlAgdHJhbnNmZXJzPyBBbSBJIG1pc3Npbmcgc29tZXRoaW5nPw0KPiA+DQo+ID4g
SSB3YXMgb25seSB3b25kZXJpbmcgd2hldGhlciBpdCB3YXMgbmVlZGVkLi4uDQo+ID4gSXQgZG9l
cyBicmluZyB1cCB0aGUgcXVlc3Rpb24gb2Ygd2h5IHRoZSA+NEdCIHRyYW5zZmVycyBldmVuIG5l
ZWQgc3BsaXR0aW5nLg0KPiA+IEJ1dCB0aGF0IGlzIGFub3RoZXIgcXVlc3Rpb24uDQo+DQo+IFNH
TCBjYW4gb25seSBzdG9yZSBhbiB1bnNpZ25lZCBpbnQgc2l6ZSwgc28gYW55IGxhcmdlIHBoeXNp
Y2FsIHJhbmdlDQo+IGhhcyB0byBiZSBzcGxpdCBkb3duLg0KPg0KPiByZG1hIG5vdyBhIGRheXMg
aGFzIGNvZGUgdG8gcHJvY2VzcyB0aGUgc2dsIGFuZCByZXN0b3JlIGJhY2sgdGhlID4gNEcNCj4g
c2l6ZXMgc2luY2UgbW9kZSBSRE1BIEhXIGNhbiBhY2NlcHQgdGhhdC4NCj4NCj4gY29tbWl0IDQ4
NjA1NWY1ZTA5ZGY5NTlhZDRlM2FhNGVlNzViNWM5MWRkZWVjMmUNCj4gQXV0aG9yOiBNaWNoYWVs
IE1hcmdvbGluIDxtcmdvbGluQGFtYXpvbi5jb20+DQo+IERhdGU6ICAgTW9uIEZlYiAxNyAxNDox
NjoyMyAyMDI1ICswMDAwDQo+DQo+ICAgICBSRE1BL2NvcmU6IEZpeCBiZXN0IHBhZ2Ugc2l6ZSBm
aW5kaW5nIHdoZW4gaXQgY2FuIGNyb3NzIFNHIGVudHJpZXMNCj4NCj4gU28gd2hhdGV2ZXIgdGhp
cyBwcm9kdWNlcyBuZWVkcyB0byBiZSBjb21wYXRpYmxlIHdpdGggdGhhdCB0byB1bmRvIGl0Lg0K
DQpUaGFuayB5b3UgZXZlcnlvbmUuIEl0IGxvb2tzIGxpa2UgbW9zdCBvcGVuIGlzc3VlcyBhcmUg
c29ydGVkIG91dC4NCkknbGwgd2FpdCBmb3IgbWFpbnRhaW5lcnMgdG8gd2VpZ2ggaW4gYmVmb3Jl
IHNlbmRpbmcgb3V0IHYzICh3aGljaA0Kd2lsbCByZW1vdmUgdGhlIHR5cGUgY2FzdCBmb3IgbWlu
KCkgcGVyIERhdmlkIEwuJ3MgZmVlZGJhY2ssIGFuZA0KcmV2ZXJ0IHRvIEFMSUdOX0RPV04oVUlO
VF9NQVgsIFBBR0VfU0laRSkgcGVyIEphc29uJ3MgZmVlZGJhY2spLg0KDQpIaSBKYXNvbiwNCg0K
VGhhbmsgeW91IGZvciB5b3VyIGZlZWRiYWNrLiBJIHRvb2sgYSBjbG9zZXIgbG9vayBhdCB0aGUg
Y29tbWl0IHRvDQplbnN1cmUgY29tcGF0aWJpbGl0eS4gVGhpcyBwYXRjaCBpcyBwZXJmZWN0bHkg
Y29tcGxlbWVudGFyeSwgYW5kDQphY3R1YWxseSBwcmV2ZW50cyBhIGZhaWx1cmUgaW4gYW4gZWRn
ZSBjYXNlIGZvciB0aGUgbGF0ZXN0DQpgaWJfdW1lbV9maW5kX2Jlc3RfcGdzemAgWzFdLg0KDQpS
ZWdhcmRzLA0KRGF2aWQNCg0KWzFdIEZvciBkbWEtYnVmIHNwbGl0IHdpdGggYDB4RkZGRkZGRkZg
LCBpbiBjYXNlIG9mIGEgZGlzY29udGluZ3VpdHkNCmluIGxhdGVyIGJ1ZmZlcnMsIHdlIHdpbGwg
aGl0IHRoaXMgY29kZSBwYXRoIGluDQpgaWJfdW1lbV9maW5kX2Jlc3RfcGdzemANCg0KYGBgDQpp
ZiAoaSAhPSAwKQ0KICAgIG1hc2sgfD0gdmE7DQpgYGANCigqQWZ0ZXIgYHZhYCBoYWQgYmVlbiBp
bmNyZW1lbnRlZCBieSBgMHhGRkZGRkZGRmAsIGR1ZSB0byBgdmEgKz0NCnNnX2RtYV9sZW4oc2cp
IC0gcGdvZmZgKQ0KKCpXaGljaCB3aWxsIHNldCB0aGUgbG93ZXN0IGJpdCBvZiBgbWFza2AgdG8g
MSkNCg0KQmVjYXVzZSBgY291bnRfdHJhaWxpbmdfemVyb3MobWFzaykgcmV0dXJucyAwYCwNCmBp
Yl91bWVtX2ZpbmRfYmVzdF9wZ3N6KClgIHdpbGwgYWx3YXlzIHJldHVybiAwIGluIHN1Y2ggY2Fz
ZXMuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
