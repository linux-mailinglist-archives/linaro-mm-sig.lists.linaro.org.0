Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JouRMj1gPWq02AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:07:09 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED616C7B26
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:07:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=fZQhYIja;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5DE0F4458D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:07:08 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by lists.linaro.org (Postfix) with ESMTPS id 7FBF63F6A0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2026 21:26:25 +0000 (UTC)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5ad2abf31aeso826e87.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2026 14:26:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782163584; cv=none;
        d=google.com; s=arc-20260327;
        b=AiALbm/EAa3VOM+2oHv9cuTTJPsABtfd4EVCM8IzHKLSkCXzIum0OvCDcgkFeJgqvA
         uewEANuV6AjIxUV7zjcS1oyE0ABmCzcxoGqjzHEgzhiY5UiWRi8ohM/GUWBOc4iReHwc
         OVaCy7h61RCs8VmAMc0hvhjvNDvKpGj2fIVZrbeFjNFUgb52yS0eji4Y7SNUUrFjdEUD
         Sj3Jrt+qFvUl2GLGelX9nDPmWqLjHs0JGjSJfqeP8ByrtZ1myMbsizSSWXspEMc50jHw
         frXXuMmEIUvFvbM+9NvTXuANuAoy8jryeks0A4ckr3X0T0FyQVNPLu5GbYaDvnyIeSDw
         DljA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ssE3TLUG/7J9ufeN9q/DrGgYY9Z2q4mT+HtG/803YCc=;
        fh=OxsANqCCVvGdUmTCtNwUecuWFRbnjojM2sMLCH3Fmd0=;
        b=VcFpW54cOMMuNZuOkYULVmmi80l2mk6VGOQpvwq6dgGJcHjpz5UsynMUX4JRNffYeO
         NZVaD4ym5mPpl9At4SZoy1f2J5p0Y0Ky7Rs8IShjUbyEXPOw5bFwHvRVN+YKZV//IFH0
         MQs+KsKl+03UyjKLPdoKsM/0ZiSVMN912SOh/AXsutKsEfkNLPXiEj/0b2OpCRWc8ct+
         8dLfrjAY/tJDNzR0iGryIHfQR8uXR+UYU9ANzyTwU+kMx+KBPZRsHybEAcKqW1o4ShLW
         b9GfTtKXnFG9QHfKtvniOZCt0o1AtXsD6zTfN9E4dsIh2UHcrsWx1J+kWtBlijQgS6F9
         hq4Q==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1782163584; x=1782768384; darn=lists.linaro.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ssE3TLUG/7J9ufeN9q/DrGgYY9Z2q4mT+HtG/803YCc=;
        b=fZQhYIjaLzmU9Y8nIbtFAGQNJfd8vupMQCwQcOY0KAEQhyDqA7NhCkjulhv2IPs8Iu
         sPloBoI0+eY31+hoKCzlRqO66r4AdH0WyJCk5MT2av22lzoU0dZpwNNVVhad8re8HmkD
         9X3gBp57Kfr/yOl69m+1g3w3xtdrEhvFwDBCEUki3HJ5YwkHE+bP3sIXIEvryTZ0c87F
         KHXO3jOoRqaZ1zo6qUBm9T3UkUw1DWX8r7OgovrJzFL+b5RbgypD+uK2ey6xnqdPKprv
         OhWilE77ihVP4f7nJGkY/D2fyA4BAWQdFCoI5hJVaoNogxOgJGzDqsifvf6A+sN+QBRJ
         1J5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782163584; x=1782768384;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ssE3TLUG/7J9ufeN9q/DrGgYY9Z2q4mT+HtG/803YCc=;
        b=C9sDLorOTI3dwK4Pz1tzfEGRihoNa8zBJshB8lREKEkqkwKnsFwVgskdws/dxWwx8j
         BZOEESZxiHmlVoOZvfL2D6sD7T5nOJjdg65akg/mSt6ERluhNTeQ/BnkmktgX6l347y8
         Gs8xuvEVBNXXXsj/RApeWXMm2+FxKqdlQe1PRDbrkw5JnH1OyPWOWgJvpp9AY1S5HUHH
         M7M98njE0YZvkyo3GzU6Oxy5+ZJsqoplybbCNqm2FTorcLcqfxVCwYdzSjgmCo7Qu5j/
         LA0HQoAiwBXF+nMYGWseR5hJkmnKrVlviQmdGZoqhhkdgG9LMOpxrGBHku0IV0MLxqsn
         YHuw==
X-Forwarded-Encrypted: i=1; AFNElJ+77egT5DCvV/M97/oUfS0J1WwkfLQVstWfJlNxdK2fhWLUHFbiQRbFRWESBO6FAqIKGMNzmfUrYnza0+On@lists.linaro.org
X-Gm-Message-State: AOJu0YyQ7Mzau9Qt4UDyb5hyDHut6YL+IVbanGjYsSMnJy0ojPCFfaZ5
	6dftA50x0cehbemYlrc+BH6V16R7MGTX1ZzyD92yLCr/Olw7zxS7ipl1YNyTufCj3IpEfwBhCOr
	33ExUbj/yOURSqUlKmD5jr29rZFhGkKJzc76UnsM=
X-Gm-Gg: AfdE7cnTE2bC1w12aSKV4hWRhxY7UzqqmqmRSqvvns1ftyLXBXl1xmhnCZGJkIhsIC3
	cQAqmxIxZD9sAAbJCzaIucjJbsq6MiXFfiWsv1fB9ruG6U9SHHbneVgZ7akLzcZFDRFQOhMsyfp
	+KT59FNyZSPvknGQteYgojBIk/iUCecALKQ8twLVJ6J9qWnn54h1sjDw4KeQtKMeqEGiCxEpzBD
	FTtyZJ8kAML5DktoAXf+KKuOi677MTOLxIrK/bKMbRLAUySgJyCQ1ZhQIDYUWBCkkmc7dzFk6wT
	Aoo=
X-Received: by 2002:a05:6512:2302:b0:5aa:883f:5da4 with SMTP id
 2adb3069b0e04-5ada9edb8famr21097e87.11.1782163583717; Mon, 22 Jun 2026
 14:26:23 -0700 (PDT)
MIME-Version: 1.0
References: <20260621222130.1667453-1-xuehaohu@google.com> <20260622091344.794e0d74@pumpkin>
In-Reply-To: <20260622091344.794e0d74@pumpkin>
From: David Hu <xuehaohu@google.com>
Date: Mon, 22 Jun 2026 17:26:10 -0400
X-Gm-Features: AVVi8CfJIbyQ0LZKF2B9vVNXYGGvbzr3GZ2ukEdWP929fB_vPszHbNiUlAHw-3A
Message-ID: <CAPd9Lg9+d=Rw4230FdcMFd0VYfyhXhD=eju53iURR8c61iXsWw@mail.gmail.com>
To: David Laight <david.laight.linux@gmail.com>
X-Spamd-Bar: -----
X-MailFrom: xuehaohu@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CUAMNXNODRFTJHJ2XHPCSDX5FLWDSZ3Y
X-Message-ID-Hash: CUAMNXNODRFTJHJ2XHPCSDX5FLWDSZ3Y
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:06:26 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Jason Gunthorpe <jgg@ziepe.ca>, Nicolin Chen <nicolinc@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, jmoroni@google.com, praan@google.com, kpberry@google.com, sashiko-bot <sashiko-bot@kernel.org>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Split sgl by largest page-aligned chunk
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CUAMNXNODRFTJHJ2XHPCSDX5FLWDSZ3Y/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: add header
X-Spamd-Result: default: False [6.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[67];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:david.laight.linux@gmail.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:jgg@ziepe.ca,m:nicolinc@nvidia.com,m:leon@kernel.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:alex@shazbot.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:iommu@lists.linux.dev,m:jmoroni@google.com,m:praan@google.com,m:kpberry@google.com,m:sashiko-bot@kernel.org,m:stable@vger.kernel.org,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3ED616C7B26
X-Spam: Yes

T24gTW9uLCBKdW4gMjIsIDIwMjYgYXQgNDoxM+KAr0FNIERhdmlkIExhaWdodA0KPGRhdmlkLmxh
aWdodC5saW51eEBnbWFpbC5jb20+IHdyb3RlOg0KPg0KDQpIaSBEYXZpZCwNCg0KVGhhbmsgeW91
IGZvciB5b3VyIHJldmlldy4gWW91IHJhaXNlZCBtYW55IGdvb2QgcG9pbnRzIHJlZ2FyZGluZw0K
b3B0aW1pemF0aW9ucyBoZXJlLiBJJ2xsIHN3aXRjaCB0byB1c2luZyAyRyBhcyB0aGUgbWF4IGVu
dHJ5IHNpemUNCihgU1pfMkdgIGZyb20gYGxpbnV4L3NpemVzLmhgKSwgYW5kIHJlbW92ZSBkaXZp
c2lvbnMgYW5kDQptdWx0aXBsaWNhdGlvbnMuIEknbGwgYWxzbyByZXBsYWNlIHRoZSBgZm9yKClg
IGxvb3Agd2l0aCBgd2hpbGUNCihsZW5ndGgpYCwgYW5kIGRyb3AgYG1pbl90KClgIGluIGZhdm9y
IG9mIGBtaW4oKWAgYnkgY2FzdGluZyBgU1pfMkdgDQp0byBgc2l6ZV90YC4gSSdsbCBzZW5kIG91
dCBhIHYyIHdpdGggdGhlc2UgY2hhbmdlcyBzaG9ydGx5Lg0KDQpUaGFua3MsDQpEYXZpZA0KDQo+
ID4gQ3VycmVudGx5LCBgZmlsbF9zZ19lbnRyeSgpYCBzcGxpdHMgdGhlIHNjYXR0ZXJsaXN0IHVz
aW5nIGBVSU5UX01BWGAuDQo+ID4gVGhpcyBjcmVhdGVzIGEgbm9uLXBhZ2UtYWxpZ25lZCBETUEg
bGVuZ3RoIChgMHhGRkZGRkZGRmApIGZvciB0aGUNCj4gPiBmaXJzdCBlbnRyeSwgcmVzdWx0aW5n
IGluIG5vbi1wYWdlLWFsaWduZWQgRE1BIGFkZHJlc3NlcyBmb3IgYWxsDQo+ID4gc3Vic2VxdWVu
dCBlbnRyaWVzLg0KPg0KPiBIb3cgZGlkIHlvdSBmaW5kIHRoaXM/DQo+IEl0IHJlcXVpcmVzIGEg
c2luZ2xlIGJ1ZmZlciBvdmVyIDRHQiAtIHNlZW1zIGhpZ2hseSB1bmxpa2VseS4NCg0KSXQgd2Fz
IG9ic2VydmVkIGR1cmluZyBleHBlcmltZW50cyB3aXRoIGJ1ZmZlcnMgb3ZlciA4R0Igb24gYW4g
YWNjZWxlcmF0b3IuDQoNCj4gPg0KPiA+IFdoaWxlIHRoZSB1bmRlcmx5aW5nIElPTU1VIG1hcHBp
bmcgbWF5IGJlIGNvbnRpZ3VvdXMsIGhhcmR3YXJlDQo+ID4gRE1BIGVuZ2luZXMgb2Z0ZW4gcmVx
dWlyZSBleHBsaWNpdCBhZGRyZXNzIGFsaWdubWVudCAoZS5nLiwgcGFnZSwNCj4gPiBjYWNoZWxp
bmUsIG9yIHN0b3JhZ2Ugc2VjdG9yIGJvdW5kYXJpZXMpLiBQYXNzaW5nIHVuYWxpZ25lZA0KPiA+
IGFkZHJlc3NlcyBhbmQgbGVuZ3RocyBjYW4gY2F1c2UgZXhwbGljaXQgZmFpbHVyZXMgaW4gRE1B
IGRlc2NyaXB0b3INCj4gPiBjcmVhdGlvbiBvciBzaWxlbnQgZGF0YSBjb3JydXB0aW9uIGlmIGxv
d2VyIHVuYWxpZ25lZCBiaXRzIGFyZQ0KPiA+IHRydW5jYXRlZC4NCj4gPg0KPiA+IEZpeCB0aGlz
IGJ5IHNwbGl0dGluZyB0aGUgc2NhdHRlcmxpc3QgYnkgdGhlIGxhcmdlc3QgcG9zc2libGUgcGFn
ZQ0KPiA+IGFsaWduZWQgY2h1bmsgd2l0aGluIGBVSU5UX01BWGAgKGBBTElHTl9ET1dOKFVJTlRf
TUFYLCBQQUdFX1NJWkUpYCkuDQo+ID4gVGhpcyBlbnN1cmVzIGFsbCBzY2F0dGVybGlzdCBETUEg
YWRkcmVzc2VzIGFuZCBsZW5ndGhzIHJlbWFpbiBwYWdlDQo+ID4gYWxpZ25lZCBhbmQgc2F0aXNm
eSBoYXJkd2FyZSBjb25zdHJhaW50cy4NCj4NCj4gSXQgd291bGQgYWxtb3N0IGNlcnRhaW5seSBi
ZXR0ZXIgdG8gc3BpbHQgaW50byAyRyBjaHVua3MuDQo+IFRoYXQgcmVtb3ZlcyBhbnkgbmVlZCBm
b3IgYW55IGRpdmlzaW9ucy4NCg0KSSBhZ3JlZS4gMkcgbmF0dXJhbGx5IGFsaWducyB3aXRoIG1v
c3QgaGFyZHdhcmUgYm91bmRhcmllcywgd2hpbGUgYWxzbw0KYWxsb3dpbmcgY29tcGlsZXIgb3B0
aW1pemF0aW9ucyB3aXRoIHNpbXBsZSBiaXQgc2hpZnRzLg0KDQo+DQo+ID4gUGFnZS1hbGlnbmVk
IGVudHJpZXMgYWxsb3cgdGhlIHN5c3RlbSB0byBjbGVhbmx5IGNodW5rIHBheWxvYWRzIGludG8N
Cj4gPiBQQ0llIE1heFBheWxvYWRTaXplIChNUFMpIChlLmcuLCAxMjggYnl0ZXMsIDI1NiBieXRl
cywgNTEyIGJ5dGVzKS4NCj4gPiBBcyBhIHJlc3VsdCwgdGhpcyBtYXkgaGVscCByZWR1Y2UgVExQ
IGZyYWdtZW50YXRpb24gaW4gUDJQIHRyYW5zZmVycw0KPiA+IGFuZCBhbGxldmlhdGUgcG90ZW50
aWFsIGNvbmdlc3Rpb24gd2l0aGluIGEgbG9naWNhbCBQQ0llIHN3aXRjaA0KPiA+IHBhcnRpdGlv
biwgZXNwZWNpYWxseSB3aGVuIFJlbGF4ZWQgT3JkZXJpbmcgaXMgbm90IHBvc3NpYmxlIGR1ZSB0
bw0KPiA+IGhhcmR3YXJlIGNvbnN0cmFpbnRzLg0KPiA+DQo+ID4gUmVwb3J0ZWQtYnk6IHNhc2hp
a28tYm90IDxzYXNoaWtvLWJvdEBrZXJuZWwub3JnPg0KPiA+IENsb3NlczogaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvYWxsLzIwMjYwNjA5MTY1NDMxLjc3ODA2MUYwMDg5M0BzbXRwLmtlcm5lbC5v
cmcvDQo+ID4gRml4ZXM6IDNhYTMxYThiYjExZSAoImRtYS1idWY6IHByb3ZpZGUgcGh5c192ZWMg
dG8gc2NhdHRlci1nYXRoZXIgbWFwcGluZyByb3V0aW5lIikNCj4gPiBDYzogc3RhYmxlQHZnZXIu
a2VybmVsLm9yZw0KPiA+IFNpZ25lZC1vZmYtYnk6IERhdmlkIEh1IDx4dWVoYW9odUBnb29nbGUu
Y29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1tYXBwaW5nLmMgfCAx
MyArKysrKysrKy0tLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDUg
ZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYtbWFwcGluZy5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYtbWFwcGluZy5jDQo+ID4gaW5k
ZXggNzk0YWNmZjI1NDZhLi5mMmJkZTM4ZmRiMWYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1idWYtbWFwcGluZy5jDQo+ID4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYtbWFwcGluZy5jDQo+ID4gQEAgLTUsNiArNSw5IEBADQo+ID4gICAqLw0KPiA+ICAjaW5jbHVk
ZSA8bGludXgvZG1hLWJ1Zi1tYXBwaW5nLmg+DQo+ID4gICNpbmNsdWRlIDxsaW51eC9kbWEtcmVz
di5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvYWxpZ24uaD4NCj4gPiArDQo+ID4gKyNkZWZpbmUg
TUFYX0VOVF9TWiBBTElHTl9ET1dOKFVJTlRfTUFYLCBQQUdFX1NJWkUpDQo+DQo+ID4NCj4gPiAg
c3RhdGljIHN0cnVjdCBzY2F0dGVybGlzdCAqZmlsbF9zZ19lbnRyeShzdHJ1Y3Qgc2NhdHRlcmxp
c3QgKnNnbCwgc2l6ZV90IGxlbmd0aCwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBkbWFfYWRkcl90IGFkZHIpDQo+ID4gQEAgLTEyLDkgKzE1LDkgQEAgc3RhdGlj
IHN0cnVjdCBzY2F0dGVybGlzdCAqZmlsbF9zZ19lbnRyeShzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNn
bCwgc2l6ZV90IGxlbmd0aCwNCj4gPiAgICAgICB1bnNpZ25lZCBpbnQgbGVuLCBuZW50czsNCj4g
PiAgICAgICBpbnQgaTsNCj4gPg0KPiA+IC0gICAgIG5lbnRzID0gRElWX1JPVU5EX1VQKGxlbmd0
aCwgVUlOVF9NQVgpOw0KPiA+ICsgICAgIG5lbnRzID0gRElWX1JPVU5EX1VQKGxlbmd0aCwgTUFY
X0VOVF9TWik7DQo+ID4gICAgICAgZm9yIChpID0gMDsgaSA8IG5lbnRzOyBpKyspIHsNCj4NCj4g
V2h5IG5vdCBjaGFuZ2UgdGhhdCB0byAnd2hpbGUgKGxlbmd0aCkgeycgdG8gYXZvaWQgdGhlIGRp
dmlzaW9uIGFib3ZlLg0KDQpTb3VuZHMgZ29vZCwgd2lsbCBkby4NCg0KPg0KPiA+IC0gICAgICAg
ICAgICAgbGVuID0gbWluX3Qoc2l6ZV90LCBsZW5ndGgsIFVJTlRfTUFYKTsNCj4gPiArICAgICAg
ICAgICAgIGxlbiA9IG1pbl90KHNpemVfdCwgbGVuZ3RoLCBNQVhfRU5UX1NaKTsNCj4NCj4gSSBi
ZXQgdGhhdCBkb2Vzbid0IG5lZWQgdG8gYmUgbWluX3QoKQ0KDQpBZ3JlZWQuDQoNCg0KPg0KPiA+
ICAgICAgICAgICAgICAgbGVuZ3RoIC09IGxlbjsNCj4gPiAgICAgICAgICAgICAgIC8qDQo+ID4g
ICAgICAgICAgICAgICAgKiBETUFCVUYgYWJ1c2VzIHNjYXR0ZXJsaXN0IHRvIGNyZWF0ZSBhIHNj
YXR0ZXJsaXN0DQo+ID4gQEAgLTI0LDcgKzI3LDcgQEAgc3RhdGljIHN0cnVjdCBzY2F0dGVybGlz
dCAqZmlsbF9zZ19lbnRyeShzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnbCwgc2l6ZV90IGxlbmd0aCwN
Cj4gPiAgICAgICAgICAgICAgICAqIGRvZXMgbm90IHJlcXVpcmUgdGhlIENQVSBsaXN0IGZvciBt
YXBwaW5nIG9yIHVubWFwcGluZy4NCj4gPiAgICAgICAgICAgICAgICAqLw0KPiA+ICAgICAgICAg
ICAgICAgc2dfc2V0X3BhZ2Uoc2dsLCBOVUxMLCAwLCAwKTsNCj4gPiAtICAgICAgICAgICAgIHNn
X2RtYV9hZGRyZXNzKHNnbCkgPSBhZGRyICsgKGRtYV9hZGRyX3QpaSAqIFVJTlRfTUFYOw0KPiA+
ICsgICAgICAgICAgICAgc2dfZG1hX2FkZHJlc3Moc2dsKSA9IGFkZHIgKyAoZG1hX2FkZHJfdClp
ICogTUFYX0VOVF9TWjsNCj4gPiAgICAgICAgICAgICAgIHNnX2RtYV9sZW4oc2dsKSA9IGxlbjsN
Cj4NCj4gUmVwbGFjZSB0aGUgbXVsdGlwbHkgd2l0aCAnYWRkciArPSBsZW4nLg0KDQpXaWxsIHVw
ZGF0ZSB0aGlzIGFzIHdlbGwuDQoNCj4NCj4gLS0gRGF2aWQNCj4NCj4gPiAgICAgICAgICAgICAg
IHNnbCA9IHNnX25leHQoc2dsKTsNCj4gPiAgICAgICB9DQo+ID4gQEAgLTQxLDE0ICs0NCwxNCBA
QCBzdGF0aWMgdW5zaWduZWQgaW50IGNhbGNfc2dfbmVudHMoc3RydWN0IGRtYV9pb3ZhX3N0YXRl
ICpzdGF0ZSwNCj4gPg0KPiA+ICAgICAgIGlmICghc3RhdGUgfHwgIWRtYV91c2VfaW92YShzdGF0
ZSkpIHsNCj4gPiAgICAgICAgICAgICAgIGZvciAoaSA9IDA7IGkgPCBucl9yYW5nZXM7IGkrKykN
Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgbmVudHMgKz0gRElWX1JPVU5EX1VQKHBoeXNfdmVj
W2ldLmxlbiwgVUlOVF9NQVgpOw0KPiA+ICsgICAgICAgICAgICAgICAgICAgICBuZW50cyArPSBE
SVZfUk9VTkRfVVAocGh5c192ZWNbaV0ubGVuLCBNQVhfRU5UX1NaKTsNCj4gPiAgICAgICB9IGVs
c2Ugew0KPiA+ICAgICAgICAgICAgICAgLyoNCj4gPiAgICAgICAgICAgICAgICAqIEluIElPVkEg
Y2FzZSwgdGhlcmUgaXMgb25seSBvbmUgU0cgZW50cnkgd2hpY2ggc3BhbnMNCj4gPiAgICAgICAg
ICAgICAgICAqIGZvciB3aG9sZSBJT1ZBIGFkZHJlc3Mgc3BhY2UsIGJ1dCB3ZSBuZWVkIHRvIG1h
a2Ugc3VyZQ0KPiA+ICAgICAgICAgICAgICAgICogdGhhdCBpdCBmaXRzIHNnLT5sZW5ndGgsIG1h
eWJlIHdlIG5lZWQgbW9yZS4NCj4gPiAgICAgICAgICAgICAgICAqLw0KPiA+IC0gICAgICAgICAg
ICAgbmVudHMgPSBESVZfUk9VTkRfVVAoc2l6ZSwgVUlOVF9NQVgpOw0KPiA+ICsgICAgICAgICAg
ICAgbmVudHMgPSBESVZfUk9VTkRfVVAoc2l6ZSwgTUFYX0VOVF9TWik7DQo+ID4gICAgICAgfQ0K
PiA+DQo+ID4gICAgICAgcmV0dXJuIG5lbnRzOw0KPg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
