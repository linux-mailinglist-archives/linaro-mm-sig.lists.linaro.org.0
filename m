Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CC62AE398
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 23:46:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5E73E665CF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 22:46:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4DF78665E9; Tue, 10 Nov 2020 22:46:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D9E6665E9;
	Tue, 10 Nov 2020 22:45:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E0B5160F1E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 22:45:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D6243665E9; Tue, 10 Nov 2020 22:45:30 +0000 (UTC)
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by lists.linaro.org (Postfix) with ESMTPS id BE369665CF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 22:45:28 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id p22so4854022wmg.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 14:45:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gIHRk4WzqhkavwE/53+xiX6vw4oD1nHmuhdAmxZjOMI=;
 b=DTdT4g6FTTXFQLMNE9oBo9VPZlKFM8beZzYgbyG7EgHOldKNMJA28PPsaz3YswUe8Y
 +dm5Rj0WddaNGJ0pn1AEj/UkfhGWfH66HXsEy3jMNSRZO/GeWm7SaWb1rT7X2d7Fie69
 pDcppwR772Kbl3prlLvfntj96slebp37bPJtBG1Vdaiti7Avnf4LgLuGPuamzgn5LJqG
 EkLxCEq1LOfh+kjg6ZKjzXdeOjG8dgIFFkdIPr3h0+Vs64gLzbTWr1xatZQkuAonvF9T
 7HlFusngaDQAq0BmvWYD/N0vz5GmYAT1c3D98GDTogexwLiW7LG3xnG6hpq1VgVOOKhB
 s+nA==
X-Gm-Message-State: AOAM532vTUZulwzjqlvSHZoVeui3IaLns7Rc6CwO76/FiEdv6KaF8bAg
 N1c7+hkYoXweoyIr7chf9YkGiiVRS4wKuOBqwEk=
X-Google-Smtp-Source: ABdhPJxUXQ0LQsJ3DS6nEHKwM8BdhNoRjD1JrShK9j9JF1Ufc4A68mOk7Y0eDhjSIaz329/nrmZXg4qr7Em4AoxHBIM=
X-Received: by 2002:a1c:6302:: with SMTP id x2mr405139wmb.56.1605048327960;
 Tue, 10 Nov 2020 14:45:27 -0800 (PST)
MIME-Version: 1.0
References: <20201109211855.3340030-1-lee.jones@linaro.org>
 <20201109211855.3340030-20-lee.jones@linaro.org>
In-Reply-To: <20201109211855.3340030-20-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 10 Nov 2020 17:45:16 -0500
Message-ID: <CADnq5_OU0RmQit_WOEQEAUX1=m1EHz9CLufSD8zyTMbzJoDtug@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 19/20] drm/radeon/r600: Fix a misnamed
 parameter description and a formatting issue
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

T24gTW9uLCBOb3YgOSwgMjAyMCBhdCA0OjE5IFBNIExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFy
by5vcmc+IHdyb3RlOgo+Cj4gRml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdh
cm5pbmcocyk6Cj4KPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yNjAwLmM6Mjk2NTogd2Fybmlu
ZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAncmVzdicgbm90IGRlc2NyaWJlZCBpbiAn
cjYwMF9jb3B5X2NwZG1hJwo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3I2MDAuYzoyOTY1OiB3
YXJuaW5nOiBFeGNlc3MgZnVuY3Rpb24gcGFyYW1ldGVyICdmZW5jZScgZGVzY3JpcHRpb24gaW4g
J3I2MDBfY29weV9jcGRtYScKPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yNjAwLmM6NDM4Mjog
d2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAncmRldicgbm90IGRlc2NyaWJl
ZCBpbiAncjYwMF9tbWlvX2hkcF9mbHVzaCcKPgo+IENjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRl
ci5kZXVjaGVyQGFtZC5jb20+Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPgo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+Cj4gQ2M6
IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1p
dC5zZW13YWxAbGluYXJvLm9yZz4KPiBDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
PiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBsaW51eC1tZWRpYUB2
Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gU2ln
bmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCkFwcGxpZWQuICBU
aGFua3MhCgpBbGV4Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3I2MDAuYyB8IDQg
KystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcjYwMC5jIGIvZHJpdmVycy9n
cHUvZHJtL3JhZGVvbi9yNjAwLmMKPiBpbmRleCA5NTg3NzkyNTAzNTI1Li4wYTA4NWI4NWY1NTlk
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcjYwMC5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL3JhZGVvbi9yNjAwLmMKPiBAQCAtMjk1Miw3ICsyOTUyLDcgQEAgYm9vbCBy
NjAwX3NlbWFwaG9yZV9yaW5nX2VtaXQoc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYsCj4gICAq
IEBzcmNfb2Zmc2V0OiBzcmMgR1BVIGFkZHJlc3MKPiAgICogQGRzdF9vZmZzZXQ6IGRzdCBHUFUg
YWRkcmVzcwo+ICAgKiBAbnVtX2dwdV9wYWdlczogbnVtYmVyIG9mIEdQVSBwYWdlcyB0byB4ZmVy
Cj4gLSAqIEBmZW5jZTogcmFkZW9uIGZlbmNlIG9iamVjdAo+ICsgKiBAcmVzdjogRE1BIHJlc2Vy
dmF0aW9uIG9iamVjdCB0byBtYW5hZ2UgZmVuY2VzCj4gICAqCj4gICAqIENvcHkgR1BVIHBhZ2lu
ZyB1c2luZyB0aGUgQ1AgRE1BIGVuZ2luZSAocjZ4eCspLgo+ICAgKiBVc2VkIGJ5IHRoZSByYWRl
b24gdHRtIGltcGxlbWVudGF0aW9uIHRvIG1vdmUgcGFnZXMgaWYKPiBAQCAtNDM3MSw3ICs0Mzcx
LDcgQEAgaW50IHI2MDBfZGVidWdmc19tY19pbmZvX2luaXQoc3RydWN0IHJhZGVvbl9kZXZpY2Ug
KnJkZXYpCj4KPiAgLyoqCj4gICAqIHI2MDBfbW1pb19oZHBfZmx1c2ggLSBmbHVzaCBIb3N0IERh
dGEgUGF0aCBjYWNoZSB2aWEgTU1JTwo+IC0gKiByZGV2OiByYWRlb24gZGV2aWNlIHN0cnVjdHVy
ZQo+ICsgKiBAcmRldjogcmFkZW9uIGRldmljZSBzdHJ1Y3R1cmUKPiAgICoKPiAgICogU29tZSBS
NlhYL1I3WFggZG9uJ3Qgc2VlbSB0byB0YWtlIGludG8gYWNjb3VudCBIRFAgZmx1c2hlcyBwZXJm
b3JtZWQKPiAgICogdGhyb3VnaCB0aGUgcmluZyBidWZmZXIuIFRoaXMgbGVhZHMgdG8gY29ycnVw
dGlvbiBpbiByZW5kZXJpbmcsIHNlZQo+IC0tCj4gMi4yNS4xCj4KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QK
PiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
