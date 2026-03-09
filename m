Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MEWDDVe5mndvQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:11:17 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA78430AD1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:11:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B4D68406EC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:06:08 +0000 (UTC)
Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com [74.125.224.41])
	by lists.linaro.org (Postfix) with ESMTPS id 753523F702
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Mar 2026 15:39:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=HPFLeLEA;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of pgonda@google.com designates 74.125.224.41 as permitted sender) smtp.mailfrom=pgonda@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yx1-f41.google.com with SMTP id 956f58d0204a3-64ca4dfdd88so11484274d50.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Mar 2026 08:39:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773070796; cv=none;
        d=google.com; s=arc-20240605;
        b=OHy1Er9bilTLCRadU1SPmFidMwqlnhY9kkuNru0g2HTRWIxf+1Z6mgpoGU2DjtAmBF
         zskHlMNCVzpy7kiChx3se/Krs61cySYGaeraTzBiuEAokhih/fxSNHyh0VKl2bc0beYb
         pe5Wj4KAXUhCiaLKox6pDOuLAOyMQIHTRa8VeLj9XWuidA84HxHSfetSog+5zcwFuUcr
         NpAhOfTx+gR8Om1lyy0ObIUUU6J+70u+EiqL/ikHPdG/HxPbriHd3r1FYBWh7daUhj0J
         Y3UUlZCSxgrHSoXj07VKS0Db9c97KS6MBbcjs1VWIMQJbwD/KxW2eR9jfQq3qpaMs4go
         AXAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=MvLYcYLZmHSPzURtRpTfKGpAse3rZ5uBdKhXxFZ9chA=;
        fh=ZeBufP8I8XGGqWTc9TO+4/y8+OV/5n1804waUR6GDZQ=;
        b=A6DDsMWZx35Qmfsd/aolU9YIRjQNTyeCgGzSpgfsZbfCDlV3Xdp83kO8XzFyDLGdlZ
         98bMD/IFeuwXih10ebBGy+6cv5Z1qJxQ+MwfMEbp8FRA9GsF1KGP9xIgrCVRXsBr/qwN
         vgDzP1qWbNH0Nyayv2UMPXYah8GHAr6VSvQgrQD10fOcPwJ3fJ3Emm3P9BVwTYVOle1x
         frnXKDdu7QcOrWhM6pXg15qeomjbmy9dZ8nibGsYZE3M7K6/2NhiqDZR0VG156qQ/B3k
         qVCIz7xGUBNFb31ORbdavJgbWlVqU4etmNVu3wOhIc1w1nm3WTpxgxeK//V4beau0Fpe
         ZiDg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1773070796; x=1773675596; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MvLYcYLZmHSPzURtRpTfKGpAse3rZ5uBdKhXxFZ9chA=;
        b=HPFLeLEAIBBZJvN06ctzvvpZferHcH+Uhst9mg0yPhuk37xsXouDEMY4bEPOGyd1m4
         rEuzSaRfGuqL0zbxlvTFLc1weMA/fYwKUNqBCizVa8ntyhCSA7I8EbyqANLQMINyZmz2
         9IyqxRorJmZyjefrf0Deo/2DgB12kCwk5BOmF4JNv9jAUCpTbwOB0pd7Y/4gyt3IechM
         Oml+5Xk5piJ5QxnvlBnat2v9KdAKh5l7+vvMbgNLtszXGcpawiApLV1hfmDr3ddoF6rL
         snC1ceVDwa67wu7K2jeM9FCVremM9vLERB7/HQc+98fuuy5SBLiPLxeMPQHqsgdbLHs3
         EJ8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773070796; x=1773675596;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MvLYcYLZmHSPzURtRpTfKGpAse3rZ5uBdKhXxFZ9chA=;
        b=RJrsLZF5SSw6kPaX6InqzFsZYC+PrGMPKT+ACuoqE1d3+RcLsGdxyVlRGuuJIKOLSC
         6JOIepHITEU91XcJuJ2x/kd85FKP2wfEZgSHeaCU9XVYgpQCQ9FKkR3AEfxDAZhSZBbe
         mBDIsd1w5iPcxnVfBV2fH0Pf8MMiRzQI/YJnO5UCqqnBd1XLK52KUF85dX/gaxs3vsvx
         SgsvVd2Y2MKKfq0ujuyLbCBzHmfGyKAcbbO4uWUykw7RR8lYQq5Zx3Ke3g85QFFJpmDa
         gcoSs4XEf9KEVnB6+q07MriMAIsMBCCzjWLPhQfMsGuKIG2jxE3fB0jKQzjYD+hzDTAq
         z1Sg==
X-Forwarded-Encrypted: i=1; AJvYcCX31xCWCmrPQimowle8vAaF84j3NXtAlW8PRocNvKEjPOvOkloJoWw+HUnsxB+cTwaLT+cunUluQ4YHKPrw@lists.linaro.org
X-Gm-Message-State: AOJu0YzfG0obbNtWNAjeH9kZQlg3LCFIHuxWcS5aTJAI0holyTWEbt1F
	Ygp+G1OYqWy+xXoUK5F9C9o1R0PlmZ7PdVtS7aNk/xH7L8Pvy175xiSWeiH+HJCZIQY7HRHTp5F
	BMZrW5JyHgUBa1m1Bd3LBdkzJLWmqQiNmv3wAWF3D
X-Gm-Gg: ATEYQzzpvL82GfHYy1ZwFJqmDSbU4S8ADqe6BmiDSliEsQv8O6+928RbLHbBDDIpGwU
	wsgMCU6LrYJ8P8RpRtq23C2vtq/ha3qztK6vMQOHU7zz54l4VdYhpPQqJ9XjYXA4qtyPnB115lY
	7xSb2gsjEiKfXzcHUcW7ay71PF+3ShAbp5Uux+qzy5ZoTrzsrMEELvUqZExDl5Yb/rnu1VZM4G2
	xWxmGHSgrmNtShe1cS+DCzxgQf4m0RCz7ebIXWg1ykFnCyI1EOSkUvWrmbRUUqjIWMiqwAV4PMI
	3rswjcHEQhWcXNdrkoR3+s9cD/Q0+foePSzWIbMqwAPf3yvk
X-Received: by 2002:a05:690e:16cc:b0:64d:29c6:7974 with SMTP id
 956f58d0204a3-64d29c67a27mr3174372d50.11.1773070795335; Mon, 09 Mar 2026
 08:39:55 -0700 (PDT)
MIME-Version: 1.0
References: <20260305123641.164164-1-jiri@resnulli.us> <20260305123641.164164-3-jiri@resnulli.us>
In-Reply-To: <20260305123641.164164-3-jiri@resnulli.us>
From: Peter Gonda <pgonda@google.com>
Date: Mon, 9 Mar 2026 09:39:44 -0600
X-Gm-Features: AaiRm51h3c_DzKOKsC7CokIZvNyOKydjIyhi9bVIzEGXBlmxcqpV-AFuGedzucs
Message-ID: <CAMkAt6o_yZ5T-3TRwymjYQZEq-Q_z=DAA3vc61h81X9sQr_CXA@mail.gmail.com>
To: Jiri Pirko <jiri@resnulli.us>
X-Spamd-Bar: ----
X-MailFrom: pgonda@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4EERI2JGLTNKVJ2FREEIY5XXUD3IHB4G
X-Message-ID-Hash: 4EERI2JGLTNKVJ2FREEIY5XXUD3IHB4G
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:04:17 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 2/2] dma-buf: heaps: system: add system_cc_decrypted heap for explicitly decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4EERI2JGLTNKVJ2FREEIY5XXUD3IHB4G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), No valid DKIM,reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[1009];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.932];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[pgonda@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,mail.gmail.com:mid,linaro.org:email,nvidia.com:email,resnulli.us:email]
X-Rspamd-Queue-Id: AAA78430AD1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

R3JlYXQgZmVhdHVyZSB0byBoYXZlIHRoYW5rcyBKaXJpISBBIGNvdXBsZSBuYWl2ZSBxdWVzdGlv
bnMuDQoNCk9uIFRodSwgTWFyIDUsIDIwMjYgYXQgNTozOOKAr0FNIEppcmkgUGlya28gPGppcmlA
cmVzbnVsbGkudXM+IHdyb3RlOg0KPg0KPiBGcm9tOiBKaXJpIFBpcmtvIDxqaXJpQG52aWRpYS5j
b20+DQo+DQo+IEFkZCBhIG5ldyAic3lzdGVtX2NjX2RlY3J5cHRlZCIgZG1hLWJ1ZiBoZWFwIHRv
IGFsbG93IHVzZXJzcGFjZSB0bw0KPiBhbGxvY2F0ZSBkZWNyeXB0ZWQgKHNoYXJlZCkgbWVtb3J5
IGZvciBjb25maWRlbnRpYWwgY29tcHV0aW5nIChDb0NvKQ0KPiBWTXMuDQo+DQo+IE9uIENvQ28g
Vk1zLCBndWVzdCBtZW1vcnkgaXMgZW5jcnlwdGVkIGJ5IGRlZmF1bHQuIFRoZSBoYXJkd2FyZSB1
c2VzIGFuDQo+IGVuY3J5cHRpb24gYml0IGluIHBhZ2UgdGFibGUgZW50cmllcyAoQy1iaXQgb24g
QU1EIFNFViwgInNoYXJlZCIgYml0IG9uDQo+IEludGVsIFREWCkgdG8gY29udHJvbCB3aGV0aGVy
IGEgZ2l2ZW4gbWVtb3J5IGFjY2VzcyBpcyBlbmNyeXB0ZWQgb3INCj4gZGVjcnlwdGVkLiBUaGUg
a2VybmVsJ3MgZGlyZWN0IG1hcCBpcyBzZXQgdXAgd2l0aCBlbmNyeXB0aW9uIGVuYWJsZWQsDQo+
IHNvIHBhZ2VzIHJldHVybmVkIGJ5IGFsbG9jX3BhZ2VzKCkgYXJlIGVuY3J5cHRlZCBpbiB0aGUg
ZGlyZWN0IG1hcA0KPiBieSBkZWZhdWx0LiBUbyBtYWtlIHRoaXMgbWVtb3J5IHVzYWJsZSBmb3Ig
ZGV2aWNlcyB0aGF0IGRvIG5vdCBzdXBwb3J0DQo+IERNQSB0byBlbmNyeXB0ZWQgbWVtb3J5IChu
byBURElTUCBzdXBwb3J0KSwgaXQgaGFzIHRvIGJlIGV4cGxpY2l0bHkNCj4gZGVjcnlwdGVkLiBB
IGNvdXBsZSBvZiB0aGluZ3MgYXJlIG5lZWRlZCB0byBwcm9wZXJseSBoYW5kbGUNCj4gZGVjcnlw
dGVkIG1lbW9yeSBmb3IgdGhlIGRtYS1idWYgdXNlIGNhc2U6DQo+DQo+IC0gc2V0X21lbW9yeV9k
ZWNyeXB0ZWQoKSBvbiB0aGUgZGlyZWN0IG1hcCBhZnRlciBhbGxvY2F0aW9uOg0KPiAgIEJlc2lk
ZXMgY2xlYXJpbmcgdGhlIGVuY3J5cHRpb24gYml0IGluIHRoZSBkaXJlY3QgbWFwIFBURXMsIHRo
aXMNCj4gICBhbHNvIG5vdGlmaWVzIHRoZSBoeXBlcnZpc29yIGFib3V0IHRoZSBwYWdlIHN0YXRl
IGNoYW5nZS4gT24gZnJlZSwNCj4gICB0aGUgaW52ZXJzZSBzZXRfbWVtb3J5X2VuY3J5cHRlZCgp
IG11c3QgYmUgY2FsbGVkIGJlZm9yZSByZXR1cm5pbmcNCj4gICBwYWdlcyB0byB0aGUgYWxsb2Nh
dG9yLiBJZiByZS1lbmNyeXB0aW9uIGZhaWxzLCBwYWdlcw0KPiAgIGFyZSBpbnRlbnRpb25hbGx5
IGxlYWtlZCB0byBwcmV2ZW50IGRlY3J5cHRlZCBtZW1vcnkgZnJvbSBiZWluZw0KPiAgIHJldXNl
ZCBhcyBwcml2YXRlLg0KPg0KPiAtIHBncHJvdF9kZWNyeXB0ZWQoKSBmb3IgdXNlcnNwYWNlIGFu
ZCBrZXJuZWwgdmlydHVhbCBtYXBwaW5nczoNCj4gICBBbnkgbmV3IG1hcHBpbmcgb2YgdGhlIGRl
Y3J5cHRlZCBwYWdlcywgYmUgaXQgdG8gdXNlcnNwYWNlIHZpYQ0KPiAgIG1tYXAgb3IgdG8ga2Vy
bmVsIHZtYWxsb2Mgc3BhY2UgdmlhIHZtYXAsIGNyZWF0ZXMgUFRFcyBpbmRlcGVuZGVudA0KPiAg
IG9mIHRoZSBkaXJlY3QgbWFwLiBUaGVzZSBtdXN0IGFsc28gaGF2ZSB0aGUgZW5jcnlwdGlvbiBi
aXQgY2xlYXJlZCwNCj4gICBvdGhlcndpc2UgYWNjZXNzZXMgdGhyb3VnaCB0aGVtIHdvdWxkIHNl
ZSBlbmNyeXB0ZWQgKGdhcmJhZ2UpIGRhdGEuDQoNClNvIHRoaXMgb25seSB3b3JrcyBvbiBuZXcg
bWFwcGluZ3M/IFdoYXQgaWYgdGhlcmUgYXJlIGV4aXN0aW5nDQptYXBwaW5ncyB0byB0aGUgbWVt
b3J5IHRoYXQgd2lsbCBiZSBjb252ZXJ0ZWQgdG8gc2hhcmVkPw0KDQpJdCdzIGFsc28gc2xpZ2h0
bHkgd29yc2UgdGhhbiBqdXN0IHJlYWRpbmcgY2lwaGVydGV4dC4gSWYgYW5vdGhlcg0KcHJvY2Vz
cyB3cml0ZXMgdG8gdGhlIG1lbW9yeSB3aXRoIHRoZSBpbmNvcnJlY3QgbWFwcGluZyBpdCBjb3Vs
ZCBjYXVzZQ0KY29ycnVwdGlvbiBvbiBBTUQgU0VWLCBvciBhbiBSTVAgdmlvbGF0aW9uIG9uIEFN
RCBTRVYtU05QLiBDYW4gd2UNCnVwZGF0ZSB0aGUgZXhpc3RpbmcgbWFwcGluZ3M/DQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
