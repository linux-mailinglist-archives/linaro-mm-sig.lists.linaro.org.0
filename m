Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB22300476
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Jan 2021 14:46:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5320C6674D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Jan 2021 13:46:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4541366755; Fri, 22 Jan 2021 13:46:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AC0166674E;
	Fri, 22 Jan 2021 13:45:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7F2216674B
 for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Jan 2021 13:45:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6B8EC6674E; Fri, 22 Jan 2021 13:45:18 +0000 (UTC)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
 [209.85.167.179])
 by lists.linaro.org (Postfix) with ESMTPS id 082376674B
 for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Jan 2021 13:45:17 +0000 (UTC)
Received: by mail-oi1-f179.google.com with SMTP id x137so4763557oix.11
 for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Jan 2021 05:45:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=uByiq5cbxTpSuvq2dpFMAGIUx/D6lyIcvK4e7oH4Et0=;
 b=fAboz0PWgJMJKCXKxNHM4hAjBVpTqS0EQQHYK6fLPFM2LB+JNWV/rAnlcouzB3zf+0
 q2f5S23iYAnmpKkcUPApDhh17wyWrvojAOYqD6FfbucDo4fLaMq6igq67ChJtO44t+6Z
 eVPP9+c6HwqyTBGqt+afy7kbti3Ue+LpoZKz4sRg9ZFXfrEtMdGkeJAkQvoTfG9GflAa
 sMQBwjwEOZDzEQjOdW/NNlLmVq7bYpLyOObcJeUj5irGJCTG9bzUdajgJxmC0Yl/fiP9
 vUeMIO6scBhS5MSAfwqzomIRDJaoVTYxwecQUjvmvoX1XFHqswrHwFeZbWWMNJ2RbDwS
 sNpw==
X-Gm-Message-State: AOAM530l9AMdRk8JiK6aQGfNEyZcmEOvtj4/zafkcexKoKVfzQP+zMbg
 oWGzAR8rQA4Oc0Z0iutDINn5qEBR+XYP8/wb7QSVWw==
X-Google-Smtp-Source: ABdhPJxz3O350DQ11ZlOU6GmrY3buaxmy6LR/RtW9IFfVrOcib3cNaKEJhK8wAgnqyB7AOn3634+wOz8pj0ozrIb0Ew=
X-Received: by 2002:aca:ad92:: with SMTP id w140mr3289220oie.128.1611323116465; 
 Fri, 22 Jan 2021 05:45:16 -0800 (PST)
MIME-Version: 1.0
References: <20210122133624.1751802-1-daniel.vetter@ffwll.ch>
 <2282a592-8e19-b5ae-68ba-cf1ad6dda768@gmail.com>
In-Reply-To: <2282a592-8e19-b5ae-68ba-cf1ad6dda768@gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 22 Jan 2021 14:45:05 +0100
Message-ID: <CAKMK7uHAB4eBn486umdyBqMkht172kwOP1fFXhcJQw0LrH5FFw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] drm/todo: Add entry for moving to
	dma_resv_lock
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

T24gRnJpLCBKYW4gMjIsIDIwMjEgYXQgMjo0MCBQTSBDaHJpc3RpYW4gS8O2bmlnCjxja29lbmln
LmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBBbSAyMi4wMS4yMSB1bSAxNDoz
NiBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4gPiBSZXF1ZXN0ZWQgYnkgVGhvbWFzLiBJIHRoaW5r
IGl0IGp1c3RpZmllcyBhIG5ldyBsZXZlbCwgc2luY2UgSSB0cmllZAo+ID4gdG8gbWFrZSBzb21l
IGZvcndhcmQgcHJvZ3Jlc3Mgb24gdGhpcyBsYXN0IHN1bW1lciwgYW5kIGdhdmUgdXAgKGZvcgo+
ID4gbm93KS4gVGhpcyBpcyB2ZXJ5IHRyaWNreS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW5p
ZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiA+IENjOiBNYWFydGVuIExhbmto
b3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IE1heGltZSBS
aXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4KPiA+IENjOiBUaG9tYXMgWmltbWVybWFubiA8dHpp
bW1lcm1hbm5Ac3VzZS5kZT4KPiA+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+
Cj4gPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+ID4gQ2M6IFN1bWl0IFNl
bXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gPiBDYzogIkNocmlzdGlhbiBLw7ZuaWci
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJu
ZWwub3JnCj4gPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gPiAtLS0KPiA+
ICAgRG9jdW1lbnRhdGlvbi9ncHUvdG9kby5yc3QgfCAxOSArKysrKysrKysrKysrKysrKysrCj4g
PiAgIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZ3B1L3RvZG8ucnN0IGIvRG9jdW1lbnRhdGlvbi9ncHUvdG9kby5yc3QK
PiA+IGluZGV4IGRlYTkwODJjMGU1Zi4uZjg3MmQzZDMzMjE4IDEwMDY0NAo+ID4gLS0tIGEvRG9j
dW1lbnRhdGlvbi9ncHUvdG9kby5yc3QKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZ3B1L3RvZG8u
cnN0Cj4gPiBAQCAtMjMsNiArMjMsOSBAQCBBZHZhbmNlZDogVHJpY2t5IHRhc2tzIHRoYXQgbmVl
ZCBmYWlybHkgZ29vZCB1bmRlcnN0YW5kaW5nIG9mIHRoZSBEUk0gc3Vic3lzdGVtCj4gPiAgIGFu
ZCBncmFwaGljcyB0b3BpY3MuIEdlbmVyYWxseSBuZWVkIHRoZSByZWxldmFudCBoYXJkd2FyZSBm
b3IgZGV2ZWxvcG1lbnQgYW5kCj4gPiAgIHRlc3RpbmcuCj4gPgo+ID4gK0V4cGVydDogT25seSBh
dHRlbXB0IHRoZXNlIGlmIHlvdSd2ZSBzdWNjZXNzZnVsbHkgY29tcGxldGVkIHNvbWUgdHJpY2t5
Cj4gPiArcmVmYWN0b3JpbmdzIGFscmVhZHkgYW5kIGFyZSBhbiBleHBlcnQgaW4gdGhlIHNwZWNp
ZmljIGFyZWEKPiA+ICsKPiA+ICAgU3Vic3lzdGVtLXdpZGUgcmVmYWN0b3JpbmdzCj4gPiAgID09
PT09PT09PT09PT09PT09PT09PT09PT09PQo+ID4KPiA+IEBAIC0xNjgsNiArMTcxLDIyIEBAIENv
bnRhY3Q6IERhbmllbCBWZXR0ZXIsIHJlc3BlY3RpdmUgZHJpdmVyIG1haW50YWluZXJzCj4gPgo+
ID4gICBMZXZlbDogQWR2YW5jZWQKPiA+Cj4gPiArTW92ZSBCdWZmZXIgT2JqZWN0IExvY2tpbmcg
dG8gZG1hX3Jlc3ZfbG9jaygpCj4gPiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCj4gPiArCj4gPiArTWFueSBkcml2ZXJzIGhhdmUgdGhlaXIgb3duIHBlci1v
YmplY3QgbG9ja2luZyBzY2hlbWUsIHVzdWFsbHkgdXNpbmcKPiA+ICttdXRleF9sb2NrKCkuIFRo
aXMgY2F1c2VzIGFsbCBraW5kcyBvZiB0cm91YmxlIGZvciBidWZmZXIgc2hhcmluZywgc2luY2UK
PiA+ICtkZXBlbmRpbmcgd2hpY2ggZHJpdmVyIGlzIHRoZSBleHBvcnRlciBhbmQgaW1wb3J0ZXIs
IHRoZSBsb2NraW5nIGhpZXJhcmNoeSBpcwo+ID4gK3JldmVyc2VkLgo+ID4gKwo+ID4gK1RvIHNv
bHZlIHRoaXMgd2UgbmVlZCBvbmUgc3RhbmRhcmQgcGVyLW9iamVjdCBsb2NraW5nIG1lY2hhbmlz
bSwgd2hpY2ggaXMKPiA+ICtkbWFfcmVzdl9sb2NrKCkuIFRoaXMgbG9jayBuZWVkcyB0byBiZSBj
YWxsZWQgYXMgdGhlIG91dGVybW9zdCBsb2NrLCB3aXRoIGFsbAo+ID4gK290aGVyIGRyaXZlciBz
cGVjaWZpYyBwZXItb2JqZWN0IGxvY2tzIHJlbW92ZWQuIFRoZSBwcm9ibGVtIGlzIHRoYSByb2xs
aW5nIG91dAo+ID4gK3RoZSBhY3R1YWwgY2hhbmdlIHRvIHRoZSBsb2NraW5nIGNvbnRyYWN0IGlz
IGEgZmxhZyBkYXksIGR1ZSB0byBzdHJ1Y3QgZG1hX2J1Zgo+ID4gK2J1ZmZlciBzaGFyaW5nLgo+
ID4gKwo+ID4gK0xldmVsOiBFeHBlcnQKPiA+ICsKPgo+IENvdWxkIHlvdSBuYW1lIHNvbWUgZXhh
bXBsZXMgb2YgZHJpdmVyIGxvY2tzIGhlcmU/IEknbSBub3QgYXdhcmUgaW4KPiBhbnl0aGluZyBs
aWtlIHRoaXMgaW4gYW1kZ3B1LCByYWRlb24gb3IgbmV2ZWF1LgoKdHRtIGJhc2VkIGRyaXZlcnMg
YXJlIGFsbCBmaW5lLiBJdCdzIGV2ZXJ5dGhpbmcgZWxzZSB3aGljaCBpcyBhCnByb2JsZW0sIGFu
ZCBpdCBnZXRzIHdvcnNlIGlmIHlvdSBtaXggaGVscGVycyAobGlrZSBzaG1lbSBoZWxwZXJzLAp3
aGljaCBoYXZlIHRoZWlyIG93biBsb2NrcyBpbnRlcm5hbGx5KSB3aXRoIHJlbmRlciBkcml2ZXJz
IChhZ2FpbiB3aXRoCnRoZWlyIG93biBtdXRleGVzKS4KCj4gQW5kIHllcyBzb3VuZHMgbGlrZSBh
IGpvYiBmb3IgdGhlIGFwcHJvcHJpYXRlIGRyaXZlciBtYWludGFpbmVyLgoKVGhlIHByb2JsZW0g
aXMsIHRoaXMgb25lIHlvdSBjYW4ndCBkbyBkcml2ZXItYnktZHJpdmVyIGJlY2F1c2Ugb2YgdGhl
CmRtYS1idWYgY29udHJhY3QuIEkgbWVhbiB3ZSB0cmllZCBmb3IgcDJwIGF0IGZpcnN0LCBpdCdz
IGp1c3QgdG9vCm11Y2guIEkgdHJpZWQgdG8gZG8gaXQgbGFzdCBzdW1tZXIganVzdCBmb3Igc2ht
ZW0gZ2VtIGhlbHBlcnMsIGFuZCB5b3UKcmVhbGx5IGhhdmUgdG8gdGFja2xlIGFsbCB0aGUgZHJp
dmVycyBpbiBvbmUgZ28gKGV2ZW4gaWYgeW91IGlnbm9yZQpkbWEtYnVmIGZvciBub3csIHdoZXJl
IHdlIHNpZGUtc3RlcHBlZCB0aGUgcHJvYmxlbSB3aXRoIHBpbm5pbmcpLiBUaGlzCmlzICJzY2Fy
ZXMgZGFudmV0IiBsZXZlbHMgb2YgbmFzdHkuCi1EYW5pZWwKCj4gVGhhbmtzLAo+IENocmlzdGlh
bi4KPgo+ID4gICBDb252ZXJ0IGxvZ2dpbmcgdG8gZHJtXyogZnVuY3Rpb25zIHdpdGggZHJtX2Rl
dmljZSBwYXJhbWF0ZXIKPiA+ICAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPgo+CgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdh
cmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
