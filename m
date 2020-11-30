Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 079302C90FE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Nov 2020 23:27:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 346B861725
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Nov 2020 22:27:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 24CAA617ED; Mon, 30 Nov 2020 22:27:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D60236164D;
	Mon, 30 Nov 2020 22:26:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 407B56087F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Nov 2020 22:26:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2F82E6164D; Mon, 30 Nov 2020 22:26:30 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by lists.linaro.org (Postfix) with ESMTPS id 0B49A6087F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Nov 2020 22:26:29 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id k3so12906067otp.12
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Nov 2020 14:26:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ELyTcX08LymPeenJIXXi/ZPMDQRwxk9oNbn6BfJ/r5o=;
 b=K9IpGlK3mIv+sTQC26i/ZbytJpvQdBtLgLGCrd709k9XQz29+OQPhd0BczsHjhVuLR
 App+0t7ssLMF+ePYBbLmdwey7Zn8LsqtbLJBpDLLnlglPGb29Cf/Rdkf7tt+xCxQ0Lec
 X6E7Lbf1osKmOHJ5hFUxfsRg6pk4xSfbmQ4VO0+XBwtpbz9oOTDDV8J/PDpooCNGoBbS
 jTS6DY0PDGkCGjtND4ED2Z7DSuV/VW1jW6lFOH4t4ssZMgZ56tRfNX/8H7mv9nAMCnii
 lYOIn0R39V/A8mFEby6goQTXDrVryXIu56Chb6f+D2FedXtpn/NWWx/WsWvPJWAcrT8U
 +Dnw==
X-Gm-Message-State: AOAM530q9QFH4iDwN4EZQY9cqF+tkBfBjPqIRPqSLGTGpOqrSiREWx60
 GgOqLhY9XcU+Ofm3Ah8Flu2vx9lsJ/1N5PfAKgA=
X-Google-Smtp-Source: ABdhPJyhogOwk85GqUih/K8lKuyluajJarfEg+XxKqk24TSWNaiPT1bDAc6sGbBpjoUmaGnLLEPc6a+mDBG/pq5B2Vw=
X-Received: by 2002:a9d:4713:: with SMTP id a19mr19192784otf.132.1606775188591; 
 Mon, 30 Nov 2020 14:26:28 -0800 (PST)
MIME-Version: 1.0
References: <20201124193824.1118741-1-lee.jones@linaro.org>
 <20201124193824.1118741-20-lee.jones@linaro.org>
In-Reply-To: <20201124193824.1118741-20-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 30 Nov 2020 17:26:17 -0500
Message-ID: <CADnq5_MY9MF2V9VG15F=cMtrn_aH1hcLGL5QidPz6b04gD-uEw@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 19/40] drm/amd/amdgpu/sdma_v3_0: Fix
 incorrect param doc-rot issue
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVHVlLCBOb3YgMjQsIDIwMjAgYXQgMjo0NSBQTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IEZpeGVzIHRoZSBmb2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjNfMC5jOjE2
NTE6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ2liJyBub3QgZGVzY3Jp
YmVkIGluICdzZG1hX3YzXzBfZW1pdF9jb3B5X2J1ZmZlcicKPiAgZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvc2RtYV92M18wLmM6MTY1MTogd2FybmluZzogRXhjZXNzIGZ1bmN0aW9uIHBhcmFt
ZXRlciAncmluZycgZGVzY3JpcHRpb24gaW4gJ3NkbWFfdjNfMF9lbWl0X2NvcHlfYnVmZmVyJwo+
Cj4gQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KPiBDYzogIkNo
cmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gQ2M6IERhdmlkIEFp
cmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xs
LmNoPgo+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+IENjOiBh
bWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5q
b25lc0BsaW5hcm8ub3JnPgoKQXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCj4gLS0tCj4gIGRyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjNfMC5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3YzXzAuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L3NkbWFfdjNfMC5jCj4gaW5kZXggNDM0MTBhN2JjY2MyNS4uOGNhN2ZiYTljMDM1ZiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3YzXzAuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjNfMC5jCj4gQEAgLTE2MzMsNyArMTYz
Myw3IEBAIHN0YXRpYyB2b2lkIHNkbWFfdjNfMF9zZXRfaXJxX2Z1bmNzKHN0cnVjdCBhbWRncHVf
ZGV2aWNlICphZGV2KQo+ICAvKioKPiAgICogc2RtYV92M18wX2VtaXRfY29weV9idWZmZXIgLSBj
b3B5IGJ1ZmZlciB1c2luZyB0aGUgc0RNQSBlbmdpbmUKPiAgICoKPiAtICogQHJpbmc6IGFtZGdw
dV9yaW5nIHN0cnVjdHVyZSBob2xkaW5nIHJpbmcgaW5mb3JtYXRpb24KPiArICogQGliOiBpbmRp
cmVjdCBidWZmZXIgdG8gY29weSB0bwo+ICAgKiBAc3JjX29mZnNldDogc3JjIEdQVSBhZGRyZXNz
Cj4gICAqIEBkc3Rfb2Zmc2V0OiBkc3QgR1BVIGFkZHJlc3MKPiAgICogQGJ5dGVfY291bnQ6IG51
bWJlciBvZiBieXRlcyB0byB4ZmVyCj4gLS0KPiAyLjI1LjEKPgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+
IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
