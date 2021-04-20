Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 816883662A3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Apr 2021 01:54:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A35156684F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Apr 2021 23:54:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 966AB66851; Tue, 20 Apr 2021 23:54:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C66A76684D;
	Tue, 20 Apr 2021 23:54:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7B7AE667BE
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 23:54:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5FB946684D; Tue, 20 Apr 2021 23:54:08 +0000 (UTC)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
 [209.85.167.178])
 by lists.linaro.org (Postfix) with ESMTPS id 1A890667BE
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 23:54:07 +0000 (UTC)
Received: by mail-oi1-f178.google.com with SMTP id x20so6970519oix.10
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 16:54:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6XeojVc4nyUM/MQvlUlo6lItw91qVr2k9CimuPL8jlQ=;
 b=Z8/iCOgLtUXBJhxQ6aL7drEgCpnRHDkjY6XZaVw/WNIpZs9l72V7WqVZxegvyDQ2JS
 j0nQRf0DtZAF7SLhRRoXOBDYA0rkalKUnZtJ52UuEh6pD5mwO/LSDbJR1NofaV0VIcM0
 qssl7wrZd1czN6mGiR7nUaHN8nDcI9XIfjkOFRun8lgyqUpsIimaAdJY+zHvQsJU+OTe
 zOwo21JSWpjP9GkQz/uSXvsyQ1eKz+/MM3jsTAFxPqmtUlDdNrOuENQFUzfGv3+52wXD
 iyu+IO0S7pnXUJj0Al5h/g3wibe5YAFETWl1M7/jgCIAmkV6LzuTc1BrOZS8wKvgm9ys
 fgoA==
X-Gm-Message-State: AOAM532GOM9YuXXp1Bsi8AmyXvRzthg5xfq2iASuAmpQ8llG7OwEc/PE
 a8c33yR0Zcdk41JAwnAaEfg1tz/dMoZRvQ7zv6k=
X-Google-Smtp-Source: ABdhPJxk1HdpfsnIkAez4V3KMV5UFoxztuT1Gwv0FNgu63EJQOuxbUXCCc2R2DYBsi9R8QOsf/YqzPKQuzS/Bn6QgOM=
X-Received: by 2002:aca:c08a:: with SMTP id q132mr4689757oif.5.1618962846514; 
 Tue, 20 Apr 2021 16:54:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210416143725.2769053-1-lee.jones@linaro.org>
 <20210416143725.2769053-27-lee.jones@linaro.org>
In-Reply-To: <20210416143725.2769053-27-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 20 Apr 2021 19:53:55 -0400
Message-ID: <CADnq5_N71QW79-MnbeUGrMSrSM7UnESz_4vKteOr_3z1obPM3w@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 26/40] drm/amd/amdgpu/amdgpu_device:
 Remove unused variable 'r'
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

QXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCk9uIEZyaSwgQXByIDE2LCAyMDIxIGF0IDEwOjM4IEFN
IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gRml4ZXMgdGhlIGZv
bGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6Cj4KPiAgZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5jOiBJbiBmdW5jdGlvbiDigJhhbWRncHVfZGV2aWNl
X3N1c3BlbmTigJk6Cj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2Uu
YzozNzMzOjY6IHdhcm5pbmc6IHZhcmlhYmxlIOKAmHLigJkgc2V0IGJ1dCBub3QgdXNlZCBbLVd1
bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KPgo+IENjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5k
ZXVjaGVyQGFtZC5jb20+Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPgo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+Cj4gQ2M6IERh
bmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5z
ZW13YWxAbGluYXJvLm9yZz4KPiBDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBD
YzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBsaW51eC1tZWRpYUB2Z2Vy
Lmtlcm5lbC5vcmcKPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gU2lnbmVk
LW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiAtLS0KPiAgZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5jIHwgNSArKy0tLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYyBiL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYwo+IGluZGV4IGI0YWQxYzA1NWM3MDIuLmVl
ZjU0YjI2NWZmZGQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X2RldmljZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rl
dmljZS5jCj4gQEAgLTM3MzAsNyArMzczMCw2IEBAIHZvaWQgYW1kZ3B1X2RldmljZV9maW5pKHN0
cnVjdCBhbWRncHVfZGV2aWNlICphZGV2KQo+ICBpbnQgYW1kZ3B1X2RldmljZV9zdXNwZW5kKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsIGJvb2wgZmJjb24pCj4gIHsKPiAgICAgICAgIHN0cnVjdCBh
bWRncHVfZGV2aWNlICphZGV2ID0gZHJtX3RvX2FkZXYoZGV2KTsKPiAtICAgICAgIGludCByOwo+
Cj4gICAgICAgICBpZiAoZGV2LT5zd2l0Y2hfcG93ZXJfc3RhdGUgPT0gRFJNX1NXSVRDSF9QT1dF
Ul9PRkYpCj4gICAgICAgICAgICAgICAgIHJldHVybiAwOwo+IEBAIC0zNzQ1LDcgKzM3NDQsNyBA
QCBpbnQgYW1kZ3B1X2RldmljZV9zdXNwZW5kKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIGJvb2wg
ZmJjb24pCj4KPiAgICAgICAgIGFtZGdwdV9yYXNfc3VzcGVuZChhZGV2KTsKPgo+IC0gICAgICAg
ciA9IGFtZGdwdV9kZXZpY2VfaXBfc3VzcGVuZF9waGFzZTEoYWRldik7Cj4gKyAgICAgICBhbWRn
cHVfZGV2aWNlX2lwX3N1c3BlbmRfcGhhc2UxKGFkZXYpOwo+Cj4gICAgICAgICBpZiAoIWFkZXYt
PmluX3MwaXgpCj4gICAgICAgICAgICAgICAgIGFtZGdwdV9hbWRrZmRfc3VzcGVuZChhZGV2LCBh
ZGV2LT5pbl9ydW5wbSk7Cj4gQEAgLTM3NTUsNyArMzc1NCw3IEBAIGludCBhbWRncHVfZGV2aWNl
X3N1c3BlbmQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgYm9vbCBmYmNvbikKPgo+ICAgICAgICAg
YW1kZ3B1X2ZlbmNlX2RyaXZlcl9zdXNwZW5kKGFkZXYpOwo+Cj4gLSAgICAgICByID0gYW1kZ3B1
X2RldmljZV9pcF9zdXNwZW5kX3BoYXNlMihhZGV2KTsKPiArICAgICAgIGFtZGdwdV9kZXZpY2Vf
aXBfc3VzcGVuZF9waGFzZTIoYWRldik7Cj4gICAgICAgICAvKiBldmljdCByZW1haW5pbmcgdnJh
bSBtZW1vcnkKPiAgICAgICAgICAqIFRoaXMgc2Vjb25kIGNhbGwgdG8gZXZpY3QgdnJhbSBpcyB0
byBldmljdCB0aGUgZ2FydCBwYWdlIHRhYmxlCj4gICAgICAgICAgKiB1c2luZyB0aGUgQ1BVLgo+
IC0tCj4gMi4yNy4wCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcmktZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
