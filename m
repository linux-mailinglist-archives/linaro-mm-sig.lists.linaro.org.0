Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3888D704FAA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 May 2023 15:43:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3197402BA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 May 2023 13:43:45 +0000 (UTC)
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	by lists.linaro.org (Postfix) with ESMTPS id 1A5D13F959
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 May 2023 13:43:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=iC9Hof1R;
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.161.44 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-54fb46d8631so4694488eaf.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 16 May 2023 06:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684244619; x=1686836619;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MNDS3X2rHZf3sL9RvpDtqqqmEvoK2Fx0XI17YW4oQ6Y=;
        b=iC9Hof1RuzRecyJIDDdI0yOsOfQOhQRq2EBkhJMutXKM7rlWPTStfNC4LHCyafK9q0
         wYeIaINHKL3e3ZuSM2QrpNyRy448cwLou2QWUrZCCzjY7A8FY6TdKTVdnuYWhDjgL57h
         NDgJQyXPhScY7l8/wVM6gE6J9Qu0FUspuH6vm6oD+8tWyUsrDJxTypSRQng0NdL10L/9
         Sccwhf7uqcPiDI0UXYmvNlj50vZ6NRKOFdekSSi1TFwNzkQhDTO2abd4OnI7/qDWYPXF
         IhapqCoZV1J6uWInZH2cIXPuRGAHHnvWo2y54oTG2OVV/XOHLK3mQPcDW1/8fa3sQ8jP
         AYCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684244619; x=1686836619;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MNDS3X2rHZf3sL9RvpDtqqqmEvoK2Fx0XI17YW4oQ6Y=;
        b=UNqF3nNn5hVTfWOvumLlZfNxVWxtqdYzUCNAx/hm1xCUr2mWzbIBqqy5y9JjR5FG7q
         3Ur/1y55oxbPfU9bqfIT+J96I8N4GBESN07iAIX3rt2/Sa9xbX0G7FevBpL4HqIKxwar
         3hTsLKwpwXQzec5u917Z1fTPDlkPsfEU38nlTiFoWg1GHL0lI4uM/BkDCvlBK4WiaktH
         uDWKxMxPkhkzo0DswY25qMBh6lvcgHcoH3Yn2KnMv+3FKqd8zlKbL2Za8qPeDMV7mVxO
         GAcKqFoZJateUU0CXheAOsyD68smgs+8GBdcltkYoXR6Cx+DVy5aPV4Z4G3vKz97FgQU
         tmwA==
X-Gm-Message-State: AC+VfDw2yt1h69N9+/adoqQFH/bTb7Baa7Q4CiurGFmU85+EgTEG2L6U
	bTioKuyVJHSKfXDpTtCynfDEXVJl9X5/ZPU9Bzc=
X-Google-Smtp-Source: ACHHUZ6RKrjDlM0Mb/+pcQN0RJSb4OCFLp9HAkUXJmi8j2zCPLht+6LlrLPl7FWnxnxj/+fMIY+zfqxmrIfzS39ZbXY=
X-Received: by 2002:a4a:6c54:0:b0:54f:53f5:b1ea with SMTP id
 u20-20020a4a6c54000000b0054f53f5b1eamr11100353oof.8.1684244619385; Tue, 16
 May 2023 06:43:39 -0700 (PDT)
MIME-Version: 1.0
References: <20230503231507.279172-1-sukrut.bellary@linux.com> <0df418ad-3492-4241-1837-55ed89b77e10@linux.com>
In-Reply-To: <0df418ad-3492-4241-1837-55ed89b77e10@linux.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 16 May 2023 09:43:28 -0400
Message-ID: <CADnq5_NVEZ5cC3JMtJu5MFWSL+3rApgKyC0XJKVEHvKSeDrB0w@mail.gmail.com>
To: Sukrut Bellary <sukrut.bellary@linux.com>
X-Spamd-Result: default: False [-9.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.161.44:from];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.161.44:from];
	RCPT_COUNT_TWELVE(0.00)[14];
	NEURAL_HAM(-0.00)[-0.951];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1A5D13F959
X-Spamd-Bar: ---------
Message-ID-Hash: RHIHDLMDHAENNJLIIDBUJSYBPGD6K4KD
X-Message-ID-Hash: RHIHDLMDHAENNJLIIDBUJSYBPGD6K4KD
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: alexander.deucher@amd.com, christian.koenig@amd.com, daniel@ffwll.ch, Xinhui.Pan@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, ray.huang@amd.com, amd-gfx@lists.freedesktop.org, Jiadong.Zhu@amd.com, sumit.semwal@linaro.org, Hawking.Zhang@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm:amd:amdgpu: Fix missing buffer object unlock in failure path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RHIHDLMDHAENNJLIIDBUJSYBPGD6K4KD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXBwbGllZC4gIFRoYW5rcyENCg0KQWxleA0KDQpPbiBNb24sIE1heSAxNSwgMjAyMyBhdCA2OjI3
4oCvUE0gU3VrcnV0IEJlbGxhcnkgPHN1a3J1dC5iZWxsYXJ5QGxpbnV4LmNvbT4gd3JvdGU6DQo+
DQo+DQo+IE9uIDUvMy8yMyAxNjoxNSwgU3VrcnV0IEJlbGxhcnkgd3JvdGU6DQo+ID4gc21hdGNo
IHdhcm5pbmcgLQ0KPiA+IDEpIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92OV8wLmM6
MzYxNSBnZnhfdjlfMF9raXFfcmVzdW1lKCkNCj4gPiB3YXJuOiBpbmNvbnNpc3RlbnQgcmV0dXJu
cyAncmluZy0+bXFkX29iai0+dGJvLmJhc2UucmVzdicuDQo+ID4NCj4gPiAyKSBkcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9nZnhfdjEwXzAuYzo2OTAxIGdmeF92MTBfMF9raXFfcmVzdW1lKCkN
Cj4gPiB3YXJuOiBpbmNvbnNpc3RlbnQgcmV0dXJucyAncmluZy0+bXFkX29iai0+dGJvLmJhc2Uu
cmVzdicuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBTdWtydXQgQmVsbGFyeSA8c3VrcnV0LmJl
bGxhcnlAbGludXguY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9nZnhfdjEwXzAuYyB8IDQgKysrLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9n
ZnhfdjlfMC5jICB8IDQgKysrLQ0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9nZnhfdjEwXzAuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92
MTBfMC5jDQo+ID4gaW5kZXggOGJkMDdmZjU5NjcxLi42NmQ1YzVkNjg0NTQgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4X3YxMF8wLmMNCj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nZnhfdjEwXzAuYw0KPiA+IEBAIC02ODkxLDggKzY4
OTEsMTAgQEAgc3RhdGljIGludCBnZnhfdjEwXzBfa2lxX3Jlc3VtZShzdHJ1Y3QgYW1kZ3B1X2Rl
dmljZSAqYWRldikNCj4gPiAgICAgICAgICAgICAgIHJldHVybiByOw0KPiA+DQo+ID4gICAgICAg
ciA9IGFtZGdwdV9ib19rbWFwKHJpbmctPm1xZF9vYmosICh2b2lkICoqKSZyaW5nLT5tcWRfcHRy
KTsNCj4gPiAtICAgICBpZiAodW5saWtlbHkociAhPSAwKSkNCj4gPiArICAgICBpZiAodW5saWtl
bHkociAhPSAwKSkgew0KPiA+ICsgICAgICAgICAgICAgYW1kZ3B1X2JvX3VucmVzZXJ2ZShyaW5n
LT5tcWRfb2JqKTsNCj4gPiAgICAgICAgICAgICAgIHJldHVybiByOw0KPiA+ICsgICAgIH0NCj4g
Pg0KPiA+ICAgICAgIGdmeF92MTBfMF9raXFfaW5pdF9xdWV1ZShyaW5nKTsNCj4gPiAgICAgICBh
bWRncHVfYm9fa3VubWFwKHJpbmctPm1xZF9vYmopOw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9nZnhfdjlfMC5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvZ2Z4X3Y5XzAuYw0KPiA+IGluZGV4IGJjZTY5MTlkNjY2YS4uZDU3MTVkOGE0MTI4IDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92OV8wLmMNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nZnhfdjlfMC5jDQo+ID4gQEAgLTM2MTcs
OCArMzYxNywxMCBAQCBzdGF0aWMgaW50IGdmeF92OV8wX2tpcV9yZXN1bWUoc3RydWN0IGFtZGdw
dV9kZXZpY2UgKmFkZXYpDQo+ID4gICAgICAgICAgICAgICByZXR1cm4gcjsNCj4gPg0KPiA+ICAg
ICAgIHIgPSBhbWRncHVfYm9fa21hcChyaW5nLT5tcWRfb2JqLCAodm9pZCAqKikmcmluZy0+bXFk
X3B0cik7DQo+ID4gLSAgICAgaWYgKHVubGlrZWx5KHIgIT0gMCkpDQo+ID4gKyAgICAgaWYgKHVu
bGlrZWx5KHIgIT0gMCkpIHsNCj4gPiArICAgICAgICAgICAgIGFtZGdwdV9ib191bnJlc2VydmUo
cmluZy0+bXFkX29iaik7DQo+ID4gICAgICAgICAgICAgICByZXR1cm4gcjsNCj4gPiArICAgICB9
DQo+ID4NCj4gPiAgICAgICBnZnhfdjlfMF9raXFfaW5pdF9xdWV1ZShyaW5nKTsNCj4gPiAgICAg
ICBhbWRncHVfYm9fa3VubWFwKHJpbmctPm1xZF9vYmopOw0KPg0KPiBGb2xsb3ctdXAuDQo+IENv
dWxkIHlvdSBwbGVhc2UgcmV2aWV3IHRoaXMgcGF0Y2g/DQo+DQo+DQo+IC0tDQo+IFJlZ2FyZHMs
DQo+IFN1a3J1dA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
