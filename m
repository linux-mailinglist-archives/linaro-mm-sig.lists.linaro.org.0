Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 450322AC589
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Nov 2020 20:55:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 67AAF665A5
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Nov 2020 19:55:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 559D7665B5; Mon,  9 Nov 2020 19:55:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AED59665BF;
	Mon,  9 Nov 2020 19:54:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 52347665A5
 for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Nov 2020 19:54:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 47531665BF; Mon,  9 Nov 2020 19:54:24 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id 136ED665A5
 for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Nov 2020 19:54:23 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id c16so661731wmd.2
 for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Nov 2020 11:54:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=blMIJqfyn+uYrIFhsDadDE528X0wnbKqoGnhBSRDkeM=;
 b=Ug4FeWOPx2R/GMkbOW903fAIn+VqkvFdYypfuhbT9EIaYvqypu4VWJjQCFh9mjVJ8Z
 bLlqIn42Z3Vj6Rpk3V+bSV27+SRwSkbBf1nJBC1vRaA5ItlkH0hMZT/1HCn0E9HnEHar
 NhhtIOvJz62oc1iIOMkEvDwbXRTtMWzfcRfD8GlBu0c1UBcctVdtwy+iBwxbTUSsMm6k
 0QFeWjx7QZGnhrAavU/N2CjkpKzv0HicgsBEiYXA4TFfoGtUf1Co/49kk1D18J365Yy8
 R26se4Khtvb/ezdPp45VHA1Z4VnBEDFEnDu6qEv/AoaSwkZ0DLBGUb5wiLcYO43W+Oqg
 dsSA==
X-Gm-Message-State: AOAM532RD0fPNqW84+HCukrodbIK9sb/OlIyTGpfJYQx0w1OOoTIfU2e
 C8tPbYc3IdBIR0npWLABmgjP+7o+V3naLiRPSpk=
X-Google-Smtp-Source: ABdhPJwBfuZyATovbM1IuUQM7O9GPHy39nSVLi118te05KekkpRznL9TPLcotUXqnnlLAjOq/3YWZAYPQzHgpZpgxV0=
X-Received: by 2002:a1c:1c3:: with SMTP id 186mr820881wmb.39.1604951662293;
 Mon, 09 Nov 2020 11:54:22 -0800 (PST)
MIME-Version: 1.0
References: <20201106214949.2042120-1-lee.jones@linaro.org>
 <20201106214949.2042120-15-lee.jones@linaro.org>
In-Reply-To: <20201106214949.2042120-15-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 9 Nov 2020 14:54:11 -0500
Message-ID: <CADnq5_M=9pDypu7r9R8Y3fuC0Oz6+uu68ybLpG+gog=v-8taGg@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 14/19] drm/amd/amdgpu/amdgpu_device:
 Provide documentation for 'reg_addr' params
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

T24gRnJpLCBOb3YgNiwgMjAyMCBhdCA0OjUwIFBNIExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFy
by5vcmc+IHdyb3RlOgo+Cj4gRml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdh
cm5pbmcocyk6Cj4KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5j
OjU5NDogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAncmVnX2FkZHInIG5v
dCBkZXNjcmliZWQgaW4gJ2FtZGdwdV9kZXZpY2VfaW5kaXJlY3RfcnJlZycKPiAgZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5jOjYyNDogd2FybmluZzogRnVuY3Rpb24g
cGFyYW1ldGVyIG9yIG1lbWJlciAncmVnX2FkZHInIG5vdCBkZXNjcmliZWQgaW4gJ2FtZGdwdV9k
ZXZpY2VfaW5kaXJlY3RfcnJlZzY0Jwo+Cj4gQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRl
dWNoZXJAYW1kLmNvbT4KPiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+Cj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFu
aWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNl
bXdhbEBsaW5hcm8ub3JnPgo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENj
OiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIu
a2VybmVsLm9yZwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiBTaWduZWQt
b2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgoKQXBwbGllZC4gIFRoYW5r
cyEKCkFsZXgKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZp
Y2UuYyB8IDIgKysKPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYyBiL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYwo+IGluZGV4IDMwMGZjYWRlNGEy
YjEuLjYzMzc0ZDEyZTAwZmUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X2RldmljZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X2RldmljZS5jCj4gQEAgLTU4NSw2ICs1ODUsNyBAQCB2b2lkIGFtZGdwdV9tbV93ZG9vcmJl
bGw2NChzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwgdTMyIGluZGV4LCB1NjQgdikKPiAgICog
QGFkZXY6IGFtZGdwdV9kZXZpY2UgcG9pbnRlcgo+ICAgKiBAcGNpZV9pbmRleDogbW1pbyByZWdp
c3RlciBvZmZzZXQKPiAgICogQHBjaWVfZGF0YTogbW1pbyByZWdpc3RlciBvZmZzZXQKPiArICog
QHJlZ19hZGRyOiBpbmRpcmVjdCByZWdpc3RlciBhZGRyZXNzIHRvIHJlYWQgZnJvbQo+ICAgKgo+
ICAgKiBSZXR1cm5zIHRoZSB2YWx1ZSBvZiBpbmRpcmVjdCByZWdpc3RlciBAcmVnX2FkZHIKPiAg
ICovCj4gQEAgLTYxNSw2ICs2MTYsNyBAQCB1MzIgYW1kZ3B1X2RldmljZV9pbmRpcmVjdF9ycmVn
KHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LAo+ICAgKiBAYWRldjogYW1kZ3B1X2RldmljZSBw
b2ludGVyCj4gICAqIEBwY2llX2luZGV4OiBtbWlvIHJlZ2lzdGVyIG9mZnNldAo+ICAgKiBAcGNp
ZV9kYXRhOiBtbWlvIHJlZ2lzdGVyIG9mZnNldAo+ICsgKiBAcmVnX2FkZHI6IGluZGlyZWN0IHJl
Z2lzdGVyIGFkZHJlc3MgdG8gcmVhZCBmcm9tCj4gICAqCj4gICAqIFJldHVybnMgdGhlIHZhbHVl
IG9mIGluZGlyZWN0IHJlZ2lzdGVyIEByZWdfYWRkcgo+ICAgKi8KPiAtLQo+IDIuMjUuMQo+Cj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2
ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
