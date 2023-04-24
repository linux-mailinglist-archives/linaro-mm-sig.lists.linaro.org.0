Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A15BD6ED0DE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Apr 2023 17:01:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 779D13F615
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Apr 2023 15:01:52 +0000 (UTC)
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	by lists.linaro.org (Postfix) with ESMTPS id A25BE3ED8E
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Apr 2023 15:01:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=mYAIPmZK;
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.161.43 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-541eee15ef5so2762249eaf.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Apr 2023 08:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682348507; x=1684940507;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FmLuhgTYqL7Xf1ZepLBDAcM7hZYQ8z1fOMJDQ+E6+Q0=;
        b=mYAIPmZK2HzigLPQnMKqFBzHiCRJzh7PWtt5JMNeP8zkDk0iStFDPcONj7vM6KhEyL
         HCyZZsMG2eE8JfrqiYm+J9IhyJWUR7aXjTnN4HZ810PynVIwAcAFrd6lhQOd9YiKku9E
         GB6WUNx7pr5xOZv5DRXezmkCvghwLh3A2aCQ8cM/rF/b8mWPyuASArcorF3r5Nb9jTmQ
         YS9bijCxrJ0HHv2FslnHzofstv7Oa7DbKr1fqrQ14huqZss3Es3iID0hjCuS+qjBonvK
         NkfPV7rH+J+RdlGt4GuFfPnK5JwHQSEPbsW72audoadCmG6thCBjQ03Zk+IwC9oKZhWL
         UzyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682348507; x=1684940507;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FmLuhgTYqL7Xf1ZepLBDAcM7hZYQ8z1fOMJDQ+E6+Q0=;
        b=ars4Zfhyh6wcMkoK5dZ0eIuOVlZzfDxu1LwoOJdDX40cOUu0NIbx0RY6BpvQW7JI67
         tlSGJWnSnZpRO8oUtx9dDSmefIwXLMe7/pEXAq8agA/dlhvjOpBLJYn3B5AZ4wKebssN
         W+qRPb06PfnqUDfjp6TefMMKLweC/KtvWhunHVTxqxLg2g0SDMMy10oV5uzr5LCYgIRJ
         T9F7v6Fc1MipGCCFQ2eJZjSmdjvY9rtQfxyV/bAAvW6s3ZYtVWWU2f3kVXVwmJjiJVN/
         KA8L7vPMkC0nKlaRXBUWJgg1kpKjBGkdmj/dr940yu87QHsAtJYxKtc1cACrCH7LSZFt
         eUnA==
X-Gm-Message-State: AAQBX9eSj4qVVSQgFRVdzUVwJj9H1wTL0fOx0gXkBb/LjgiMXmHh37Bh
	f5db4DkMgQPHM6Qhn8iUpOqMj9sNWY0eFhMhLWo=
X-Google-Smtp-Source: AKy350bvySqFfk+PN5/1/SUO2+TYGz4oCIBT7UtP95XTbp0gi4oyh+p1bcsbgrNCQzfiJIm7L2v9LQ1nM5oR6v7S8qo=
X-Received: by 2002:a4a:a3c3:0:b0:547:7574:b89a with SMTP id
 t3-20020a4aa3c3000000b005477574b89amr3806308ool.1.1682348507067; Mon, 24 Apr
 2023 08:01:47 -0700 (PDT)
MIME-Version: 1.0
References: <20230424055910.15683-1-sukrut.bellary@linux.com> <ecc972c1-cf7d-cd99-805b-38dbf04adc79@amd.com>
In-Reply-To: <ecc972c1-cf7d-cd99-805b-38dbf04adc79@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 24 Apr 2023 11:01:35 -0400
Message-ID: <CADnq5_OmRnsKkCE2OVcp-6kYww92-DKybg0=hM1tO-GaUAGLEw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.161.43:from];
	NEURAL_HAM(-0.00)[-0.968];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[linux.com,ffwll.ch,gmail.com,linaro.org,amd.com,inria.fr,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	RCVD_TLS_LAST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A25BE3ED8E
X-Spamd-Bar: --------
Message-ID-Hash: X772VNTW7FFOU5X7ZTBYHPVEGHHGRUKE
X-Message-ID-Hash: X772VNTW7FFOU5X7ZTBYHPVEGHHGRUKE
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sukrut Bellary <sukrut.bellary@linux.com>, daniel@ffwll.ch, sumit.semwal@linaro.org, Hawking.Zhang@amd.com, Julia.Lawall@inria.fr, dri-devel@lists.freedesktop.org, Xinhui.Pan@amd.com, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, alexander.deucher@amd.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm:amd:amdgpu: Fix missing bo unlock in failure path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X772VNTW7FFOU5X7ZTBYHPVEGHHGRUKE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBBcHIgMjQsIDIwMjMgYXQgMzowN+KAr0FNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBBbSAyNC4wNC4yMyB1bSAwNzo1OSBz
Y2hyaWViIFN1a3J1dCBCZWxsYXJ5Og0KPiA+IHNtYXRjaCB3YXJuaW5nIC0gaW5jb25zaXN0ZW50
IGhhbmRsaW5nIG9mIGJ1ZmZlciBvYmplY3QgcmVzZXJ2ZQ0KPiA+IGFuZCB1bnJlc2VydmUuDQo+
ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBTdWtydXQgQmVsbGFyeSA8c3VrcnV0LmJlbGxhcnlAbGlu
dXguY29tPg0KPg0KPiBGb3Igbm93IHRoYXQgcGF0Y2ggaXMgUmV2aWV3ZWQtYnk6IENocmlzdGlh
biBLw7ZuaWcNCj4gPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4uDQoNCkFwcGxpZWQuICBUaGFu
a3MuDQoNCj4NCj4gQnV0IGZvciB0aGUgcmVjb3JkIG1hcHBpbmcvdW5tYXBwaW5nIHRoZSBNUUQg
bGlrZSB0aGlzIGlzIGEgdmVyeSBiYWQNCj4gaWRlYSBpbiB0aGUgZmlyc3QgcGxhY2UuDQo+DQo+
IFdlIGNvdWxkIG5lZWQgdG8gc2h1ZmZsZSBtZW1vcnkgYXJvdW5kIGZvciB0aGF0IGR1cmluZyBy
ZXN1bWUgYW5kIHRoYXQNCj4gaXMgbm90IHNvbWV0aGluZyB3ZSByZWFsbHkgd2FudCB0byBkby4N
Cg0KV2Ugc2hvdWxkIHByb2JhYmx5IGp1c3Qga2VlcCB0aGUgTVFEcyBtYXBwZWQuICBPbiBzdXNw
ZW5kIHdlIG5lZWQgdG8NCnNhdmUgb3V0IHRoZSBNUUQgc3RhdGUgc28gaXQgY2FuIGJlIHJlc3Rv
cmVkIG9uIHJlc3VtZSB3aGVuIHRoZSBNUURzDQphcmUgaW4gdnJhbS4NCg0KQWxleA0KDQo+DQo+
IENocmlzdGlhbi4NCj4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2dmeF92OF8wLmMgfCA0ICsrKy0NCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9nZnhfdjhfMC5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4X3Y4
XzAuYw0KPiA+IGluZGV4IDI3ODQxNmFjZjA2MC4uNWRlNDRkN2U5MmRlIDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92OF8wLmMNCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nZnhfdjhfMC5jDQo+ID4gQEAgLTQ2ODYsOCArNDY4Niwx
MCBAQCBzdGF0aWMgaW50IGdmeF92OF8wX2tpcV9yZXN1bWUoc3RydWN0IGFtZGdwdV9kZXZpY2Ug
KmFkZXYpDQo+ID4gICAgICAgICAgICAgICByZXR1cm4gcjsNCj4gPg0KPiA+ICAgICAgIHIgPSBh
bWRncHVfYm9fa21hcChyaW5nLT5tcWRfb2JqLCAmcmluZy0+bXFkX3B0cik7DQo+ID4gLSAgICAg
aWYgKHVubGlrZWx5KHIgIT0gMCkpDQo+ID4gKyAgICAgaWYgKHVubGlrZWx5KHIgIT0gMCkpIHsN
Cj4gPiArICAgICAgICAgICAgIGFtZGdwdV9ib191bnJlc2VydmUocmluZy0+bXFkX29iaik7DQo+
ID4gICAgICAgICAgICAgICByZXR1cm4gcjsNCj4gPiArICAgICB9DQo+ID4NCj4gPiAgICAgICBn
ZnhfdjhfMF9raXFfaW5pdF9xdWV1ZShyaW5nKTsNCj4gPiAgICAgICBhbWRncHVfYm9fa3VubWFw
KHJpbmctPm1xZF9vYmopOw0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
