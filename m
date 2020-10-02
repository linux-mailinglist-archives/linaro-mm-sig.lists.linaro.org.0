Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1271C280FFB
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 Oct 2020 11:35:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B998060961
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 Oct 2020 09:35:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AAE39618B2; Fri,  2 Oct 2020 09:35:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DDD6261831;
	Fri,  2 Oct 2020 09:35:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 66C4A60961
 for <linaro-mm-sig@lists.linaro.org>; Fri,  2 Oct 2020 09:35:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 41B1261831; Fri,  2 Oct 2020 09:35:15 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id 2CFC160961
 for <linaro-mm-sig@lists.linaro.org>; Fri,  2 Oct 2020 09:35:13 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id k15so1021981wrn.10
 for <linaro-mm-sig@lists.linaro.org>; Fri, 02 Oct 2020 02:35:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=BpK88C7pHVfm7Xd/YUZRAsUp3EAae6LbRjsv8dXA5cw=;
 b=hv7JYGGlzF0SphQIeOtu9BQJSV3O1meGLfS+Qjsf9bdtTznKBfotxh588Cx7CkZY5u
 kOa4r66Mx20/xV6f55efhfbJqiwb/AHBy1giklrA9ESrvUg1nnFrdWWjm5hU4QXYGDPi
 cOG3mUDKchn9cTZfA26rh0ThKWs8+DkxBSFPCGNSLdWu4YUodlBGL4STYbFKDlJ2DJWw
 sgcI6afJT8Sv+B0nhHuKcN5e81T+U3WsZeOakVkvhUOkOYbbh71RZyUo1188DLUchHg8
 2eA5swFFAVjV+Y2u58BWxrQiLXN4RxMBdsgHDb6enwSRxjkpDNlNm6EBjChzpK1jN8P+
 weCA==
X-Gm-Message-State: AOAM531/brsO2vFJB0bFiB4IKEX7bkAW67WWhpvwdwfCeLPFBG/EdW6Z
 3og8/X6pykCwOLDukT4IeVSuTw==
X-Google-Smtp-Source: ABdhPJykrhwgDQ+Cfh4cqZgcNZxoClfD6BLD+KFpVIbHeTXbxtjIEdx893xAoQyqCspb1vNoEtkdFA==
X-Received: by 2002:adf:8285:: with SMTP id 5mr1892288wrc.97.1601631312192;
 Fri, 02 Oct 2020 02:35:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u66sm1121105wme.12.2020.10.02.02.35.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Oct 2020 02:35:10 -0700 (PDT)
Date: Fri, 2 Oct 2020 11:35:08 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Alexandre Bailon <abailon@baylibre.com>
Message-ID: <20201002093508.GF438822@phenom.ffwll.local>
Mail-Followup-To: Alexandre Bailon <abailon@baylibre.com>,
 linux-remoteproc@vger.kernel.org, ohad@wizery.com,
 gpain@baylibre.com, stephane.leprovost@mediatek.com,
 jstephan@baylibre.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 mturquette@baylibre.com, bjorn.andersson@linaro.org,
 christian.koenig@amd.com, linux-media@vger.kernel.org
References: <20200930115350.5272-1-abailon@baylibre.com>
 <20201001084856.GC438822@phenom.ffwll.local>
 <8e4bb739-c3b3-d790-e8e3-dd5df2d6f869@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8e4bb739-c3b3-d790-e8e3-dd5df2d6f869@baylibre.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: ohad@wizery.com, linaro-mm-sig@lists.linaro.org,
 stephane.leprovost@mediatek.com, christian.koenig@amd.com,
 mturquette@baylibre.com, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, gpain@baylibre.com, jstephan@baylibre.com,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [RFC PATCH 0/4] Add a RPMsg driver to support
 AI Processing Unit (APU)
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

T24gVGh1LCBPY3QgMDEsIDIwMjAgYXQgMDc6Mjg6MjdQTSArMDIwMCwgQWxleGFuZHJlIEJhaWxv
biB3cm90ZToKPiBIaSBEYW5pZWwsCj4gCj4gT24gMTAvMS8yMCAxMDo0OCBBTSwgRGFuaWVsIFZl
dHRlciB3cm90ZToKPiA+IE9uIFdlZCwgU2VwIDMwLCAyMDIwIGF0IDAxOjUzOjQ2UE0gKzAyMDAs
IEFsZXhhbmRyZSBCYWlsb24gd3JvdGU6Cj4gPiA+IFRoaXMgYWRkcyBhIFJQTXNnIGRyaXZlciB0
aGF0IGltcGxlbWVudHMgY29tbXVuaWNhdGlvbiBiZXR3ZWVuIHRoZSBDUFUgYW5kIGFuCj4gPiA+
IEFQVS4KPiA+ID4gVGhpcyB1c2VzIFZpcnRJTyBidWZmZXIgdG8gZXhjaGFuZ2UgbWVzc2FnZXMg
YnV0IGZvciBzaGFyaW5nIGRhdGEsIHRoaXMgdXNlcwo+ID4gPiBhIGRtYWJ1ZiwgbWFwcGVkIHRv
IGJlIHNoYXJlZCBiZXR3ZWVuIENQVSAodXNlcnNwYWNlKSBhbmQgQVBVLgo+ID4gPiBUaGUgZHJp
dmVyIGlzIHJlbGF0aXZlbHkgZ2VuZXJpYywgYW5kIHNob3VsZCB3b3JrIHdpdGggYW55IFNvQyBp
bXBsZW1lbnRpbmcKPiA+ID4gaGFyZHdhcmUgYWNjZWxlcmF0b3IgZm9yIEFJIGlmIHRoZXkgdXNl
IHN1cHBvcnQgcmVtb3RlcHJvYyBhbmQgVmlydElPLgo+ID4gPiAKPiA+ID4gRm9yIHRoZSBwZW9w
bGUgaW50ZXJlc3RlZCBieSB0aGUgZmlybXdhcmUgb3IgdXNlcnNwYWNlIGxpYnJhcnksCj4gPiA+
IHRoZSBzb3VyY2VzIGFyZSBhdmFpbGFibGUgaGVyZToKPiA+ID4gaHR0cHM6Ly9naXRodWIuY29t
L0JheUxpYnJlL29wZW4tYW1wL3RyZWUvdjIwMjAuMDEtbXRrL2FwcHMvZXhhbXBsZXMvYXB1Cj4g
PiBTaW5jZSB0aGlzIGhhcyBvcGVuIHVzZXJzcGFjZSAoZnJvbSBhIHZlcnkgY3Vyc29yeSBsb29r
KSwgYW5kIHNtZWxscyB2ZXJ5Cj4gPiBtdWNoIGxpa2UgYW4gYWNjZWxlcmF0aW9uIGRyaXZlciwg
YW5kIHNlZW1zIHRvIHVzZSBkbWEtYnVmIGZvciBtZW1vcnkKPiA+IG1hbmFnZW1lbnQ6IFdoeSBp
cyB0aGlzIG5vdCBqdXN0IGEgZHJtIGRyaXZlcj8KPiAKPiBJIGhhdmUgbmV2ZXIgdGhvdWdoIHRv
IERSTSBzaW5jZSBmb3IgbWUgaXQgd2FzIG9ubHkgYSBSUE1zZyBkcml2ZXIuCj4gSSBkb24ndCBr
bm93IHdlbGwgRFJNLiBDb3VsZCB5b3UgdGVsbCBtZSBob3cgeW91IHdvdWxkIGRvIGl0IHNvIEkg
Y291bGQgaGF2ZQo+IGEgbG9vayA/CgpXZWxsIGludGVybmFsbHkgaXQgd291bGQgc3RpbGwgYmUg
YW4gcnBtc2cgZHJpdmVyIC4uLiBJJ20gYXNzdW1pbmcgdGhhdCdzCmtpbmRhIHNpbWlsYXIgdG8g
aG93IG1vc3QgZ3B1IGRyaXZlcnMgc2l0IG9uIHRvcCBvZiBhIHBjaV9kZXZpY2Ugb3IgYQpwbGF0
Zm9ybV9kZXZpY2UsIGl0J3MganVzdCBhIG1lYW5zIHRvIGdldCBhdCB5b3VyICJkZXZpY2UiPwoK
VGhlIHBhcnQgSSdtIHRhbGtpbmcgYWJvdXQgaGVyZSBpcyB0aGUgdXNlcnNwYWNlIGFwaS4gWW91
J3JlIGNyZWF0aW5nIGFuCmVudGlyZWx5IG5ldyBjaGFyZGV2IGludGVyZmFjZSwgd2hpY2ggYXQg
bGVhc3QgZnJvbSBhIHF1aWNrIGxvb2sgc2VlbXMgdG8KYmUgYmFzZWQgb24gZG1hLWJ1ZiBidWZm
ZXJzIGFuZCB1c2VkIHRvIHN1Ym1pdCBjb21tYW5kcyB0byB5b3VyIGRldmljZSB0bwpkbyBzb21l
IGtpbmQgb2YgY29tcHV0aW5nL3Byb2Nlc3NpbmcuIFRoYXQncyBleGFjdGx5IHdoYXQgZHJpdmVy
cy9ncHUvZHJtCmRvZXMgKGlmIHlvdSBpZ25vcmUgdGhlIGRpc3BsYXkvbW9kZXNldCBzaWRlIG9m
IHRoaW5ncykgLSBhdCB0aGUga2VybmVsCmxldmVsIGdwdXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdp
dGggZ3JhcGhpY3MsIGJ1dCBhbGwgd2l0aCBoYW5kbGluZyBidWZmZXIKb2JqZWN0cyBhbmQgdGhy
b3dpbmcgd29ya2xvYWRzIGF0IHNvbWUga2luZCBvZiBhY2NlbGVyYXRvciB0aGluZy4KCk9mIGNv
dXJzZSB0aGF0J3MganVzdCBteSBndWVzcyBvZiB3aGF0J3MgZ29pbmcgb24sIGFmdGVyIHNjcm9s
bGluZyB0aHJvdWdoCnlvdXIgZHJpdmVyIGFuZCB1c2Vyc3BhY2UgYSBiaXQsIEkgbWlnaHQgYmUg
Y29tcGxldGVseSBvZmYuIEJ1dCBpZiBteQpndWVzcyBpcyByb3VnaGx5IHJpZ2h0LCB0aGVuIHlv
dXIgZHJpdmVyIGlzIGludGVybmFsbHkgYW4gcnBtc2cKZHJpdmVyLCBidXQgdG93YXJkcyB1c2Vy
c3BhY2UgaXQgc2hvdWxkIGJlIGEgZHJtIGRyaXZlci4KCkNoZWVycywgRGFuaWVsCgo+IAo+IFRo
YW5rcywKPiBBbGV4YW5kcmUKPiAKPiA+IC1EYW5pZWwKPiA+IAo+ID4gPiBBbGV4YW5kcmUgQmFp
bG9uICgzKToKPiA+ID4gICAgQWRkIGEgUlBNU0cgZHJpdmVyIGZvciB0aGUgQVBVIGluIHRoZSBt
dDgxODMKPiA+ID4gICAgcnBtc2c6IGFwdV9ycG1zZzogdXBkYXRlIHRoZSB3YXkgdG8gc3RvcmUg
SU9NTVUgbWFwcGluZwo+ID4gPiAgICBycG1zZzogYXB1X3JwbXNnOiBBZGQgYW4gSU9DVEwgdG8g
cmVxdWVzdCBJT01NVSBtYXBwaW5nCj4gPiA+IAo+ID4gPiBKdWxpZW4gU1RFUEhBTiAoMSk6Cj4g
PiA+ICAgIHJwbXNnOiBhcHVfcnBtc2c6IEFkZCBzdXBwb3J0IGZvciBhc3luYyBhcHUgcmVxdWVz
dAo+ID4gPiAKPiA+ID4gICBkcml2ZXJzL3JwbXNnL0tjb25maWcgICAgICAgICAgfCAgIDkgKwo+
ID4gPiAgIGRyaXZlcnMvcnBtc2cvTWFrZWZpbGUgICAgICAgICB8ICAgMSArCj4gPiA+ICAgZHJp
dmVycy9ycG1zZy9hcHVfcnBtc2cuYyAgICAgIHwgNzUyICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKwo+ID4gPiAgIGRyaXZlcnMvcnBtc2cvYXB1X3JwbXNnLmggICAgICB8ICA1MiAr
KysKPiA+ID4gICBpbmNsdWRlL3VhcGkvbGludXgvYXB1X3JwbXNnLmggfCAgNDcgKysrCj4gPiA+
ICAgNSBmaWxlcyBjaGFuZ2VkLCA4NjEgaW5zZXJ0aW9ucygrKQo+ID4gPiAgIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBkcml2ZXJzL3JwbXNnL2FwdV9ycG1zZy5jCj4gPiA+ICAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvcnBtc2cvYXB1X3JwbXNnLmgKPiA+ID4gICBjcmVhdGUgbW9kZSAxMDA2NDQg
aW5jbHVkZS91YXBpL2xpbnV4L2FwdV9ycG1zZy5oCj4gPiA+IAo+ID4gPiAtLSAKPiA+ID4gMi4y
Ni4yCj4gPiA+IAo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+ID4gPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gPiA+IGRyaS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPiA+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcmktZGV2ZWwKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcmktZGV2ZWwKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVy
LCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
