Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFC12C90D8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Nov 2020 23:21:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ABF9C617EF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Nov 2020 22:21:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9D075617DE; Mon, 30 Nov 2020 22:21:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DC0DA6164D;
	Mon, 30 Nov 2020 22:20:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 21C156087F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Nov 2020 22:20:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 133F96164D; Mon, 30 Nov 2020 22:20:22 +0000 (UTC)
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by lists.linaro.org (Postfix) with ESMTPS id A7B726087F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Nov 2020 22:20:20 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id o25so15997444oie.5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Nov 2020 14:20:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+xii/CM8RmygCIt+QaUy7AnG00s6vO35LXvnr7JAkeY=;
 b=iYanl0Dnv9/sqNkGUp4iq8keyMZR/YnymxrtLPIr4OvbVtPukeqUpKpsmaycW/+iyl
 yXPSFi+Dq7XJFHYlbF5s/fpHl/RT9amAxxJrwnH8g6KYo/7z6SUQDuTRXBk6rG2Zu/fq
 lUHydKyIJZLBxHuDG8rIuYsWVlx2VChz6HbS69sqFx4L9UPZCeuPQqhZrbv2AZ/LS6Lb
 pz59RLIRWi7vdxMrfwlDNW/ilb+sfU7pRUqvowTrmXxGhsIwsv/QQ0Q+ToXUdtIMCIXv
 1orTUyEtfWjBmAMjLi3vVH6eZE67NxHBof0KlRe7XxJIq8+QJ17A48mYr4MBxkSq1ZG/
 y4LA==
X-Gm-Message-State: AOAM530BoOXMxVo5WnHnem/hk2F3fBsoWQnm5M02vM/cPdIO4E1yQB0i
 iklia6Dh0SQCp6ydWa7ubKVWDLVjk943WLZI324=
X-Google-Smtp-Source: ABdhPJzk0kwsPGBe+AGMcf76Sr+IFHJX7wXHRT4IV1q+OfBehvzRPc30BvZc/0mGAdJM3ot/vldyWtcPgFVUilMtcWc=
X-Received: by 2002:aca:4f53:: with SMTP id d80mr903002oib.120.1606774820130; 
 Mon, 30 Nov 2020 14:20:20 -0800 (PST)
MIME-Version: 1.0
References: <20201124193824.1118741-1-lee.jones@linaro.org>
 <20201124193824.1118741-17-lee.jones@linaro.org>
In-Reply-To: <20201124193824.1118741-17-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 30 Nov 2020 17:20:09 -0500
Message-ID: <CADnq5_Nhc-deK-BY_ede4Rbzru0U1xNy2X0nQ+9ZJU5BOz-uEw@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 16/40] drm/amd/amdgpu/gfx_v10_0: Remove
 a bunch of set but unused variables
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

T24gVHVlLCBOb3YgMjQsIDIwMjAgYXQgMjo0NCBQTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IEZpeGVzIHRoZSBmb2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92MTBfMC5jOiBJ
biBmdW5jdGlvbiDigJhnZnhfdjEwX3JsY2dfd3JlZ+KAmToKPiAgZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvZ2Z4X3YxMF8wLmM6MTQxNjoxODogd2FybmluZzogdmFyaWFibGUg4oCYZ3JibV9p
ZHjigJkgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KPiAgZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4X3YxMF8wLmM6MTQxNToxODogd2FybmluZzogdmFy
aWFibGUg4oCYZ3JibV9jbnRs4oCZIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQt
dmFyaWFibGVdCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92MTBfMC5jOjE0MTM6
MTU6IHdhcm5pbmc6IHZhcmlhYmxlIOKAmHNjcmF0Y2hfcmVnM+KAmSBzZXQgYnV0IG5vdCB1c2Vk
IFstV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlXQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9nZnhfdjEwXzAuYzoxNDEyOjE1OiB3YXJuaW5nOiB2YXJpYWJsZSDigJhzY3JhdGNoX3JlZzLi
gJkgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KPgo+IENjOiBB
bGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+Cj4gQ2M6ICJDaHJpc3RpYW4g
S8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IENjOiBEYXZpZCBBaXJsaWUgPGFp
cmxpZWRAbGludXguaWU+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBD
YzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPiBDYzogYW1kLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zwo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCj4gU2lnbmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGlu
YXJvLm9yZz4KCkFwcGxpZWQuICBUaGFua3MhCgpBbGV4Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9nZnhfdjEwXzAuYyB8IDkgLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA5IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2dmeF92MTBfMC5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4X3YxMF8wLmMK
PiBpbmRleCBhNmQwMzkzMWY3ZmE0Li5kNDc2MGY0ZTI2OWExIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92MTBfMC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvZ2Z4X3YxMF8wLmMKPiBAQCAtMTQwOSwyMyArMTQwOSwxNCBAQCBzdGF0aWMg
dm9pZCBnZnhfdjEwX3JsY2dfd3JlZyhzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwgdTMyIG9m
ZnNldCwgdTMyIHYpCj4gIHsKPiAgICAgICAgIHN0YXRpYyB2b2lkICpzY3JhdGNoX3JlZzA7Cj4g
ICAgICAgICBzdGF0aWMgdm9pZCAqc2NyYXRjaF9yZWcxOwo+IC0gICAgICAgc3RhdGljIHZvaWQg
KnNjcmF0Y2hfcmVnMjsKPiAtICAgICAgIHN0YXRpYyB2b2lkICpzY3JhdGNoX3JlZzM7Cj4gICAg
ICAgICBzdGF0aWMgdm9pZCAqc3BhcmVfaW50Owo+IC0gICAgICAgc3RhdGljIHVpbnQzMl90IGdy
Ym1fY250bDsKPiAtICAgICAgIHN0YXRpYyB1aW50MzJfdCBncmJtX2lkeDsKPiAgICAgICAgIHVp
bnQzMl90IGkgPSAwOwo+ICAgICAgICAgdWludDMyX3QgcmV0cmllcyA9IDUwMDAwOwo+Cj4gICAg
ICAgICBzY3JhdGNoX3JlZzAgPSBhZGV2LT5ybW1pbyArIChhZGV2LT5yZWdfb2Zmc2V0W0dDX0hX
SVBdWzBdW21tU0NSQVRDSF9SRUcwX0JBU0VfSURYXSArIG1tU0NSQVRDSF9SRUcwKSo0Owo+ICAg
ICAgICAgc2NyYXRjaF9yZWcxID0gYWRldi0+cm1taW8gKyAoYWRldi0+cmVnX29mZnNldFtHQ19I
V0lQXVswXVttbVNDUkFUQ0hfUkVHMV9CQVNFX0lEWF0gKyBtbVNDUkFUQ0hfUkVHMSkqNDsKPiAt
ICAgICAgIHNjcmF0Y2hfcmVnMiA9IGFkZXYtPnJtbWlvICsgKGFkZXYtPnJlZ19vZmZzZXRbR0Nf
SFdJUF1bMF1bbW1TQ1JBVENIX1JFRzFfQkFTRV9JRFhdICsgbW1TQ1JBVENIX1JFRzIpKjQ7Cj4g
LSAgICAgICBzY3JhdGNoX3JlZzMgPSBhZGV2LT5ybW1pbyArIChhZGV2LT5yZWdfb2Zmc2V0W0dD
X0hXSVBdWzBdW21tU0NSQVRDSF9SRUcxX0JBU0VfSURYXSArIG1tU0NSQVRDSF9SRUczKSo0Owo+
ICAgICAgICAgc3BhcmVfaW50ID0gYWRldi0+cm1taW8gKyAoYWRldi0+cmVnX29mZnNldFtHQ19I
V0lQXVswXVttbVJMQ19TUEFSRV9JTlRfQkFTRV9JRFhdICsgbW1STENfU1BBUkVfSU5UKSo0Owo+
Cj4gLSAgICAgICBncmJtX2NudGwgPSBhZGV2LT5yZWdfb2Zmc2V0W0dDX0hXSVBdWzBdW21tR1JC
TV9HRlhfQ05UTF9CQVNFX0lEWF0gKyBtbUdSQk1fR0ZYX0NOVEw7Cj4gLSAgICAgICBncmJtX2lk
eCA9IGFkZXYtPnJlZ19vZmZzZXRbR0NfSFdJUF1bMF1bbW1HUkJNX0dGWF9JTkRFWF9CQVNFX0lE
WF0gKyBtbUdSQk1fR0ZYX0lOREVYOwo+IC0KPiAgICAgICAgIGlmIChhbWRncHVfc3Jpb3ZfcnVu
dGltZShhZGV2KSkgewo+ICAgICAgICAgICAgICAgICBwcl9lcnIoInNob3VsZG4ndCBjYWxsIHJs
Y2cgd3JpdGUgcmVnaXN0ZXIgZHVyaW5nIHJ1bnRpbWVcbiIpOwo+ICAgICAgICAgICAgICAgICBy
ZXR1cm47Cj4gLS0KPiAyLjI1LjEKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaS1kZXZlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
