Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A562C91F4
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Dec 2020 00:04:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B1DEC61868
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Nov 2020 23:04:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A49AE617EF; Mon, 30 Nov 2020 23:04:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E9D0161655;
	Mon, 30 Nov 2020 23:04:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4C1516087F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Nov 2020 23:04:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4047C61655; Mon, 30 Nov 2020 23:04:08 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by lists.linaro.org (Postfix) with ESMTPS id 2E40D6087F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Nov 2020 23:04:07 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id h19so13072051otr.1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Nov 2020 15:04:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/XTX3Z66O+BazeLjFxr+puLvZ6PetLfBClwP+q5Bj0g=;
 b=BifVZlwIHNSF5LTFrXTniH3KGGk9aQVmApwIuboCZTV6Ln3KCQEs3uas8ZmyvSeP9J
 POnmRrwEyWSuYWBqu29kXDauioXAUNjyNEl/tTXAq9rj7fkw7YYPGFBcDBa3MTcGl3mq
 cxhTK8FVGWyrGgFOhr+WLNNczUJwlJu5zB7z5ZQVli/Q6hNHfVCdkA1myYPBjl7rCRv6
 /9jQUZSOU+UdmKX2UqULZucvGQrlo8fCHrlM0YJQ//7rIWtWJU3Pc8D2HBLASHbCJ5Fi
 D+t2dNtoH2Ee5bY1WAYlUmxM6xhw4KL9e00KbZ0iOG4n4hYcf4JhzG5ZFLImS7XKmdYd
 SZeA==
X-Gm-Message-State: AOAM530oXnjrnBwfb0S7JJJCesHtpaRBi9uBrX709biQpmlH0YaWBUVT
 joxxmex5dJNvx0gjV68s++ELVlszVwuPDABQ9tE=
X-Google-Smtp-Source: ABdhPJzFEcs1LGYfXam7Brnq4I4Rmdbke/J7wWbeEuPhw0Yq74o/WHrC0htfeQw4Reicm+MX5kc+4IXl7vhIg4OzjLA=
X-Received: by 2002:a05:6830:22e4:: with SMTP id
 t4mr19122959otc.23.1606777445195; 
 Mon, 30 Nov 2020 15:04:05 -0800 (PST)
MIME-Version: 1.0
References: <20201124193824.1118741-1-lee.jones@linaro.org>
 <20201124193824.1118741-41-lee.jones@linaro.org>
In-Reply-To: <20201124193824.1118741-41-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 30 Nov 2020 18:03:53 -0500
Message-ID: <CADnq5_PwGBLKU5cZtrLH4BUep9AgzwRW9xwj+rakxC_FY9RuGw@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 40/40] drm/amd/amdgpu/amdgpu_uvd: Add
 description for amdgpu_uvd_cs_msg_decode()'s 'buf_sizes' param
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
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV91dmQuYzo1
NTU6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ2J1Zl9zaXplcycgbm90
IGRlc2NyaWJlZCBpbiAnYW1kZ3B1X3V2ZF9jc19tc2dfZGVjb2RlJwo+Cj4gQ2M6IEFsZXggRGV1
Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KPiBDYzogIkNocmlzdGlhbiBLw7ZuaWci
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBs
aW51eC5pZT4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBTdW1p
dCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6
IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3Jn
PgoKQXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV91dmQuYyB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdXZk
LmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdXZkLmMKPiBpbmRleCBmOGYw
Mzg0YThkOWFkLi43YzViNjBlNTM0ODIyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV91dmQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV91dmQuYwo+IEBAIC01NDcsNiArNTQ3LDcgQEAgc3RhdGljIGludCBhbWRncHVfdXZk
X2NzX3Bhc3MxKHN0cnVjdCBhbWRncHVfdXZkX2NzX2N0eCAqY3R4KQo+ICAgKgo+ICAgKiBAYWRl
djogYW1kZ3B1X2RldmljZSBwb2ludGVyCj4gICAqIEBtc2c6IHBvaW50ZXIgdG8gbWVzc2FnZSBz
dHJ1Y3R1cmUKPiArICogQGJ1Zl9zaXplczogcGxhY2Vob2xkZXIgdG8gcHV0IHRoZSBkaWZmZXJl
bnQgYnVmZmVyIGxlbmd0aHMKPiAgICoKPiAgICogUGVlayBpbnRvIHRoZSBkZWNvZGUgbWVzc2Fn
ZSBhbmQgY2FsY3VsYXRlIHRoZSBuZWNlc3NhcnkgYnVmZmVyIHNpemVzLgo+ICAgKi8KPiAtLQo+
IDIuMjUuMQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
LWRldmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpo
dHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
