Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA1438B23C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 16:50:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D4D696124D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 14:50:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BE6FC612A5; Thu, 20 May 2021 14:50:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2F22461234;
	Thu, 20 May 2021 14:50:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5A150611F7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 14:50:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5625D61214; Thu, 20 May 2021 14:50:25 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id 43B1461200
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 14:50:23 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id x8so17963232wrq.9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 07:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Pw/S3DhRfs9hqIwXkjoQ53ij2Leive6HtbA3MFyHCVA=;
 b=hwiIauTkRs1gkN7GptgkaSNYGZrP3Ui4s0V1lP3VcpU9RdwFWgPVtzMNlwAMoyPI9s
 I3PU2aWE4CfRaH9vhiYZHL4ZGUUoS8qUrgEV10VObwtOqCMXgORXcqrLFvBKxrSZjk7U
 Qy1ReiQyV5LNQNzkjF6irBDS4DxFx32SHBvWepatsCspmxetBEaXfREFdmHe269HmmRt
 v/p+fLWYleQBkV2+rMjMpiJGHWoFBON/jYuJop49t+TmRKFFYAZccBHEeboTIKls3dmz
 Lu25yodi2wA30N77koIcqpHBweSntl6WcktpsTVQQkL4mmoicBJglBDbb9I8RA0NJFLq
 oLrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Pw/S3DhRfs9hqIwXkjoQ53ij2Leive6HtbA3MFyHCVA=;
 b=ubKkMkLoAhvsvabS5UhL2ChLpRd6/GrU5QnMd6rX/EDzxRCFypN/8UIdDAPWl2hU8Z
 SPiPetvSLMR47e2wPQTuywq/RFCrU5JVkz25ytEo7kMo4+ebJdTI1u1RYwT8DcalMZFg
 mY4STlgBBnv1wonEzqDZv6HiLAODEXY96mTdp2jnO9s/qLnh081T5SQfuIqwzkVAXTIZ
 ErD5xzWDToxujnP8wlHzNqX7fm3VN25s4PLq8jT4Y8t8QeQAx6vcp+bg2RD1CloNWfF0
 I23cqi2Koaw2MHWc+g5t7w3Pg3V5oIrV+PmvQjXtNg27/fJDidA0lm2wmhW2fLCRTRaa
 0yyQ==
X-Gm-Message-State: AOAM530Y5zRFHHiuVMKPppwXadecYSdJ4EMi+DOMpVw8aXtuc2/py4so
 AlswkKv/g6emcjuoVlbZS0vDKPicG9UuwL0smMU=
X-Google-Smtp-Source: ABdhPJyqpa5z8S7zPqUU/Sw+yjCc4qC8hKSJNQRRZDc71DjdMxDOwRF7Ke51/NMtAhuN4Tw9Wv81UvtjRWmRVbsahmU=
X-Received: by 2002:adf:fa46:: with SMTP id y6mr4810707wrr.83.1621522222321;
 Thu, 20 May 2021 07:50:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210519183855.1523927-1-robdclark@gmail.com>
 <20210519183855.1523927-2-robdclark@gmail.com>
 <8dcdc8d5-176c-f0ad-0d54-6466e9e68a0a@amd.com>
 <CAF6AEGtg_VnxYrj94AfbAfViK1v8U0ZJyfJjS4taVLMF=YVy+w@mail.gmail.com>
 <d65acf46-4c3b-4903-6222-0b81915d355d@amd.com>
In-Reply-To: <d65acf46-4c3b-4903-6222-0b81915d355d@amd.com>
From: Rob Clark <robdclark@gmail.com>
Date: Thu, 20 May 2021 07:54:05 -0700
Message-ID: <CAF6AEGvm1tFwpfyJrX1bTGoHg_wzKKLQvSk2qLHf3XeqvEzDPA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC 1/3] dma-fence: Add boost fence op
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: Rob Clark <robdclark@chromium.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 freedreno <freedreno@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVGh1LCBNYXkgMjAsIDIwMjEgYXQgNzoxMSBBTSBDaHJpc3RpYW4gS8O2bmlnCjxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOgo+Cj4KPgo+IEFtIDIwLjA1LjIxIHVtIDE2OjA3IHNj
aHJpZWIgUm9iIENsYXJrOgo+ID4gT24gV2VkLCBNYXkgMTksIDIwMjEgYXQgMTE6NDcgUE0gQ2hy
aXN0aWFuIEvDtm5pZwo+ID4gPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6Cj4gPj4g
VWZmLCB0aGF0IGxvb2tzIHZlcnkgaGFyZHdhcmUgc3BlY2lmaWMgdG8gbWUuCj4gPiBIb3dzbz8g
IEknbSBub3Qgc3VyZSBJIGFncmVlLi4gYW5kIGV2ZW4gaWYgaXQgd2FzIG5vdCB1c2VmdWwgZm9y
IHNvbWUKPiA+IGh3LCBpdCBzaG91bGQgYmUgdXNlZnVsIGZvciBlbm91Z2ggZHJpdmVycyAoYW5k
IGhhcm0gbm8gZHJpdmVycyksIHNvIEkKPiA+IHN0aWxsIHRoaW5rIGl0IGlzIGEgZ29vZCBpZGVh
Cj4gPgo+ID4gVGhlIGZhbGxiYWNrIHBsYW4gaXMgdG8gZ28gdGhlIGk5MTUgcm91dGUgYW5kIHN0
b3AgdXNpbmcgYXRvbWljCj4gPiBoZWxwZXJzIGFuZCBkbyB0aGUgc2FtZSB0aGluZyBpbnNpZGUg
dGhlIGRyaXZlciwgYnV0IHRoYXQgZG9lc24ndCBoZWxwCj4gPiBhbnkgb2YgdGhlIGNhc2VzIHdo
ZXJlIHlvdSBoYXZlIGEgc2VwYXJhdGUga21zIGFuZCBncHUgZHJpdmVyLgo+Cj4gWWVhaCwgdGhh
dCdzIGNlcnRhaW5seSBub3Qgc29tZXRoaW5nIHdlIHdhbnQuCj4KPiA+PiBBcyBmYXIgYXMgSSBj
YW4gc2VlIHlvdSBjYW4gYWxzbyBpbXBsZW1lbnQgY29tcGxldGVseSBpbnNpZGUgdGhlIGJhY2tl
bmQKPiA+PiBieSBzdGFydGluZyBhIHRpbWVyIG9uIGVuYWJsZV9zaWduYWxpbmcsIGRvbid0IHlv
dT8KPiA+IE5vdCByZWFsbHkuLiBJIG1lYW4sIHRoZSBmYWN0IHRoYXQgc29tZXRoaW5nIHdhaXRl
ZCBvbiBhIGZlbmNlIGNvdWxkCj4gPiBiZSBhIHVzZWZ1bCBpbnB1dCBzaWduYWwgdG8gZ3B1IGZy
ZXEgZ292ZXJub3IsIGJ1dCBpdCBpcyBlbnRpcmVseQo+ID4gaW5zdWZmaWNpZW50Li4KPiA+Cj4g
PiBJZiB0aGUgY3B1IGlzIHNwZW5kaW5nIGEgbG90IG9mIHRpbWUgd2FpdGluZyBvbiBhIGZlbmNl
LCBjcHVmcmVxIHdpbGwKPiA+IGNsb2NrIGRvd24gc28geW91IHNwZW5kIGxlc3MgdGltZSB3YWl0
aW5nLiAgQW5kIG5vIHByb2JsZW0gaGFzIGJlZW4KPiA+IHNvbHZlZC4gIFlvdSBhYnNvbHV0ZWx5
IG5lZWQgdGhlIGNvbmNlcHQgb2YgYSBtaXNzZWQgZGVhZGxpbmUsIGFuZCBhCj4gPiB0aW1lciBk
b2Vzbid0IGdpdmUgeW91IHRoYXQuCj4KPiBPayB0aGVuIEkgcHJvYmFibHkgZG9uJ3QgdW5kZXJz
dGFuZCB0aGUgdXNlIGNhc2UgaGVyZS4KPgo+IFdoYXQgZXhhY3RseSBkbyB5b3UgdHJ5IHRvIHNv
bHZlPwoKQmFzaWNhbGx5IHNpdHVhdGlvbnMgd2hlcmUgeW91IGFyZSBwaW5nLXBvbmdpbmcgYmV0
d2VlbiBHUFUgYW5kIENQVS4uCmZvciBleGFtcGxlIGlmIHlvdSBhcmUgZG91YmxlIGJ1ZmZlcmlu
ZyBpbnN0ZWFkIG9mIHRyaXBsZSBidWZmZXJpbmcsCmFuZCBkb2luZyB2Ymxhbmsgc3luYydkIHBh
Z2VmbGlwcy4gIFRoZSBHUFUsIHdpdGhvdXQgYW55IGV4dHJhIHNpZ25hbCwKY291bGQgZ2V0IHN0
dWNrIGF0IDMwZnBzIGFuZCBhIGxvdyBncHUgZnJlcSwgYmVjYXVzZSBpdCBlbmRzIHVwIGlkbGUK
d2hpbGUgd2FpdGluZyBmb3IgYW4gZXh0cmEgdmJsYW5rIGN5Y2xlIGZvciB0aGUgbmV4dCBiYWNr
LWJ1ZmZlciB0bwpiZWNvbWUgYXZhaWxhYmxlLiAgV2hlcmVhcyBpZiBpdCBib29zdGVkIHVwIHRv
IGEgaGlnaGVyIGZyZXEgYW5kCnN0b3BwZWQgbWlzc2luZyBhIHZibGFuayBkZWFkbGluZSwgaXQg
d291bGQgYmUgbGVzcyBpZGxlIGR1ZSB0bwpnZXR0aW5nIHRoZSBuZXh0IGJhY2stYnVmZmVyIHNv
b25lciAoZHVlIHRvIG5vdCBtaXNzaW5nIGEgdmJsYW5rCmRlYWRsaW5lKS4KCkJSLAotUgoKPiBU
aGFua3MsCj4gQ2hyaXN0aWFuLgo+Cj4gPgo+ID4gQlIsCj4gPiAtUgo+ID4KPiA+PiBDaHJpc3Rp
YW4uCj4gPj4KPiA+PiBBbSAxOS4wNS4yMSB1bSAyMDozOCBzY2hyaWViIFJvYiBDbGFyazoKPiA+
Pj4gRnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPgo+ID4+Pgo+ID4+PiBB
ZGQgYSB3YXkgdG8gaGludCB0byB0aGUgZmVuY2Ugc2lnbmFsZXIgdGhhdCBhIGZlbmNlIHdhaXRl
ciBoYXMgbWlzc2VkIGEKPiA+Pj4gZGVhZGxpbmUgd2FpdGluZyBvbiB0aGUgZmVuY2UuCj4gPj4+
Cj4gPj4+IEluIHNvbWUgY2FzZXMsIG1pc3NpbmcgYSB2YmxhbmsgY2FuIHJlc3VsdCBpbiBsb3dl
ciBncHUgdXRpbGl6YXRpb24sCj4gPj4+IHdoZW4gcmVhbGx5IHdlIHdhbnQgdG8gZ28gaW4gdGhl
IG9wcG9zaXRlIGRpcmVjdGlvbiBhbmQgYm9vc3QgZ3B1IGZyZXEuCj4gPj4+IFRoZSBib29zdCBj
YWxsYmFjayBnaXZlcyBzb21lIGZlZWRiYWNrIHRvIHRoZSBmZW5jZSBzaWduYWxlciB0aGF0IHdl
Cj4gPj4+IGFyZSBtaXNzaW5nIGRlYWRsaW5lcywgc28gaXQgY2FuIHRha2UgdGhpcyBpbnRvIGFj
Y291bnQgaW4gaXQncyBmcmVxLwo+ID4+PiB1dGlsaXphdGlvbiBjYWxjdWxhdGlvbnMuCj4gPj4+
Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4K
PiA+Pj4gLS0tCj4gPj4+ICAgIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggfCAyNiArKysrKysr
KysrKysrKysrKysrKysrKysrKwo+ID4+PiAgICAxIGZpbGUgY2hhbmdlZCwgMjYgaW5zZXJ0aW9u
cygrKQo+ID4+Pgo+ID4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCBi
L2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgKPiA+Pj4gaW5kZXggOWYxMmVmYWFhOTNhLi4xNzI3
MDI1MjFhY2MgMTAwNjQ0Cj4gPj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgKPiA+
Pj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaAo+ID4+PiBAQCAtMjMxLDYgKzIzMSwx
NyBAQCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyB7Cj4gPj4+ICAgICAgICBzaWduZWQgbG9uZyAoKndh
aXQpKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLAo+ID4+PiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBib29sIGludHIsIHNpZ25lZCBsb25nIHRpbWVvdXQpOwo+ID4+Pgo+ID4+PiArICAgICAv
KioKPiA+Pj4gKyAgICAgICogQGJvb3N0Ogo+ID4+PiArICAgICAgKgo+ID4+PiArICAgICAgKiBP
cHRpb25hbCBjYWxsYmFjaywgdG8gaW5kaWNhdGUgdGhhdCBhIGZlbmNlIHdhaXRlciBtaXNzZWQg
YSBkZWFkbGluZS4KPiA+Pj4gKyAgICAgICogVGhpcyBjYW4gc2VydmUgYXMgYSBzaWduYWwgdGhh
dCAoaWYgcG9zc2libGUpIHdoYXRldmVyIHNpZ25hbHMgdGhlCj4gPj4+ICsgICAgICAqIGZlbmNl
IHNob3VsZCBib29zdCBpdCdzIGNsb2Nrcy4KPiA+Pj4gKyAgICAgICoKPiA+Pj4gKyAgICAgICog
VGhpcyBjYW4gYmUgY2FsbGVkIGluIGFueSBjb250ZXh0IHRoYXQgY2FuIGNhbGwgZG1hX2ZlbmNl
X3dhaXQoKS4KPiA+Pj4gKyAgICAgICovCj4gPj4+ICsgICAgIHZvaWQgKCpib29zdCkoc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UpOwo+ID4+PiArCj4gPj4+ICAgICAgICAvKioKPiA+Pj4gICAgICAg
ICAqIEByZWxlYXNlOgo+ID4+PiAgICAgICAgICoKPiA+Pj4gQEAgLTU4Niw2ICs1OTcsMjEgQEAg
c3RhdGljIGlubGluZSBzaWduZWQgbG9uZyBkbWFfZmVuY2Vfd2FpdChzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZSwgYm9vbCBpbnRyKQo+ID4+PiAgICAgICAgcmV0dXJuIHJldCA8IDAgPyByZXQgOiAw
Owo+ID4+PiAgICB9Cj4gPj4+Cj4gPj4+ICsvKioKPiA+Pj4gKyAqIGRtYV9mZW5jZV9ib29zdCAt
IGhpbnQgZnJvbSB3YWl0ZXIgdGhhdCBpdCBtaXNzZWQgYSBkZWFkbGluZQo+ID4+PiArICoKPiA+
Pj4gKyAqIEBmZW5jZTogdGhlIGZlbmNlIHRoYXQgY2F1c2VkIHRoZSBtaXNzZWQgZGVhZGxpbmUK
PiA+Pj4gKyAqCj4gPj4+ICsgKiBUaGlzIGZ1bmN0aW9uIGdpdmVzIGEgaGludCBmcm9tIGEgZmVu
Y2Ugd2FpdGVyIHRoYXQgYSBkZWFkbGluZSB3YXMKPiA+Pj4gKyAqIG1pc3NlZCwgc28gdGhhdCB0
aGUgZmVuY2Ugc2lnbmFsZXIgY2FuIGZhY3RvciB0aGlzIGluIHRvIGRldmljZQo+ID4+PiArICog
cG93ZXIgc3RhdGUgZGVjaXNpb25zCj4gPj4+ICsgKi8KPiA+Pj4gK3N0YXRpYyBpbmxpbmUgdm9p
ZCBkbWFfZmVuY2VfYm9vc3Qoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpCj4gPj4+ICt7Cj4gPj4+
ICsgICAgIGlmIChmZW5jZS0+b3BzLT5ib29zdCkKPiA+Pj4gKyAgICAgICAgICAgICBmZW5jZS0+
b3BzLT5ib29zdChmZW5jZSk7Cj4gPj4+ICt9Cj4gPj4+ICsKPiA+Pj4gICAgc3RydWN0IGRtYV9m
ZW5jZSAqZG1hX2ZlbmNlX2dldF9zdHViKHZvaWQpOwo+ID4+PiAgICB1NjQgZG1hX2ZlbmNlX2Nv
bnRleHRfYWxsb2ModW5zaWduZWQgbnVtKTsKPiA+Pj4KPgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
