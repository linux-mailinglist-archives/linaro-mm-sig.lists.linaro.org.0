Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCC71E63C3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 May 2020 16:24:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9D66160836
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 May 2020 14:24:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8F894619D9; Thu, 28 May 2020 14:24:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 05F0761789;
	Thu, 28 May 2020 14:23:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 64CD760813
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 May 2020 14:23:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 55B3161789; Thu, 28 May 2020 14:23:05 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by lists.linaro.org (Postfix) with ESMTPS id 8785C60813
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 May 2020 14:23:03 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id d26so2470722otc.7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 May 2020 07:23:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mfUajei3iY431nisNFP6PkBPo+jJ4W41Aia4LnYABWQ=;
 b=PIRwQWSde6+ZTsHDd6XfRENQalD4iw8Fkggpd8GnePw6CCbAFTM7KLYYIFoZn9jpG8
 leQHx1kx4l6pU7izZK36zNzHqavQG2Zfn1f9ECAm4VFPoZN8h1ZsyFeyzMZrkdKXdTJX
 dqKdlN3xmIsWAlbn8VT9GE1cJctgz5Vx8OadbbaYpvYYyyEfZl53GmMjyil19PsB8OSm
 LpvyoEU2m/G4eVWd4r44lAcwXoq+7Z1y0vNd3Xl7ZRqBLiT9oTmFQ4lEd9muEeeL8TgO
 GNZPq5LH6cmAUJW04loE/YLUKjSTa7agw95lJLCbLYleHYTVLF6UJlbWC0IgXtfuGdEM
 rPlQ==
X-Gm-Message-State: AOAM532VUOwcOXNpUD4lLD7hlO3sDrRfGGMnorG3RPfDLNj6RDiGk1FR
 2QykXIKUdgjhSbY4yq4MlKn/8gbnpWn8J8OEkoWgnw==
X-Google-Smtp-Source: ABdhPJwNxg9CMM36a6ht/5xuPEOxoI2pKA/i8iJaW3IruTtJtLbKte8opXy9jpqttbU0T/qneElqZ9s39dTzaiuFbOY=
X-Received: by 2002:a9d:1d1:: with SMTP id e75mr2300297ote.303.1590675782856; 
 Thu, 28 May 2020 07:23:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
 <20200512085944.222637-3-daniel.vetter@ffwll.ch>
 <81b3a3be-b818-9e7c-e93e-ecf161bec94c@shipmail.org>
In-Reply-To: <81b3a3be-b818-9e7c-e93e-ecf161bec94c@shipmail.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 28 May 2020 16:22:51 +0200
Message-ID: <CAKMK7uHb-DTKqiBKbcKuVeWPmRBsnq2QjWXQ44oLDE=qxLVvJA@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m_=28Intel=29?= <thomas_os@shipmail.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [RFC 02/17] dma-fence: basic lockdep annotations
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

T24gVGh1LCBNYXkgMjgsIDIwMjAgYXQgMzozNyBQTSBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwp
Cjx0aG9tYXNfb3NAc2hpcG1haWwub3JnPiB3cm90ZToKPgo+IE9uIDIwMjAtMDUtMTIgMTA6NTks
IERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiBEZXNpZ24gaXMgc2ltaWxhciB0byB0aGUgbG9ja2Rl
cCBhbm5vdGF0aW9ucyBmb3Igd29ya2VycywgYnV0IHdpdGgKPiA+IHNvbWUgdHdpc3RzOgo+ID4K
PiA+IC0gV2UgdXNlIGEgcmVhZC1sb2NrIGZvciB0aGUgZXhlY3V0aW9uL3dvcmtlci9jb21wbGV0
aW9uIHNpZGUsIHNvIHRoYXQKPiA+ICAgIHRoaXMgZXhwbGljaXQgYW5ub3RhdGlvbiBjYW4gYmUg
bW9yZSBsaWJlcmFsbHkgc3ByaW5rbGVkIGFyb3VuZC4KPiA+ICAgIFdpdGggcmVhZCBsb2NrcyBs
b2NrZGVwIGlzbid0IGdvaW5nIHRvIGNvbXBsYWluIGlmIHRoZSByZWFkLXNpZGUKPiA+ICAgIGlz
bid0IG5lc3RlZCB0aGUgc2FtZSB3YXkgdW5kZXIgYWxsIGNpcmN1bXN0YW5jZXMsIHNvIEFCQkEg
ZGVhZGxvY2tzCj4gPiAgICBhcmUgb2suIFdoaWNoIHRoZXkgYXJlLCBzaW5jZSB0aGlzIGlzIGFu
IGFubm90YXRpb24gb25seS4KPiA+Cj4gPiAtIFdlJ3JlIHVzaW5nIG5vbi1yZWN1cnNpdmUgbG9j
a2RlcCByZWFkIGxvY2sgbW9kZSwgc2luY2UgaW4gcmVjdXJzaXZlCj4gPiAgICByZWFkIGxvY2sg
bW9kZSBsb2NrZGVwIGRvZXMgbm90IGNhdGNoIHJlYWQgc2lkZSBoYXphcmRzLiBBbmQgd2UKPiA+
ICAgIF92ZXJ5XyBtdWNoIHdhbnQgcmVhZCBzaWRlIGhhemFyZHMgdG8gYmUgY2F1Z2h0LiBGb3Ig
ZnVsbCBkZXRhaWxzIG9mCj4gPiAgICB0aGlzIGxpbWl0YXRpb24gc2VlCj4gPgo+ID4gICAgY29t
bWl0IGU5MTQ5ODU4OTc0NjA2NWUzYWU5NWQ5YTAwYjA2OGU1MjVlZWMzNGYKPiA+ICAgIEF1dGhv
cjogUGV0ZXIgWmlqbHN0cmEgPHBldGVyekBpbmZyYWRlYWQub3JnPgo+ID4gICAgRGF0ZTogICBX
ZWQgQXVnIDIzIDEzOjEzOjExIDIwMTcgKzAyMDAKPiA+Cj4gPiAgICAgICAgbG9ja2luZy9sb2Nr
ZGVwL3NlbGZ0ZXN0czogQWRkIG1peGVkIHJlYWQtd3JpdGUgQUJCQSB0ZXN0cwo+ID4KPiA+IC0g
VG8gYWxsb3cgbmVzdGluZyBvZiB0aGUgcmVhZC1zaWRlIGV4cGxpY2l0IGFubm90YXRpb25zIHdl
IGV4cGxpY2l0bHkKPiA+ICAgIGtlZXAgdHJhY2sgb2YgdGhlIG5lc3RpbmcuIGxvY2tfaXNfaGVs
ZCgpIGFsbG93cyB1cyB0byBkbyB0aGF0Lgo+ID4KPiA+IC0gVGhlIHdhaXQtc2lkZSBhbm5vdGF0
aW9uIGlzIGEgd3JpdGUgbG9jaywgYW5kIGVudGlyZWx5IGRvbmUgd2l0aGluCj4gPiAgICBkbWFf
ZmVuY2Vfd2FpdCgpIGZvciBldmVyeW9uZSBieSBkZWZhdWx0Lgo+ID4KPiA+IC0gVG8gYmUgYWJs
ZSB0byBmcmVlbHkgYW5ub3RhdGUgaGVscGVyIGZ1bmN0aW9ucyBJIHdhbnQgdG8gbWFrZSBpdCBv
awo+ID4gICAgdG8gY2FsbCBkbWFfZmVuY2VfYmVnaW4vZW5kX3NpZ25hbGxpbmcgZnJvbSBzb2Z0
L2hhcmRpcnEgY29udGV4dC4KPiA+ICAgIEZpcnN0IGF0dGVtcHQgd2FzIHVzaW5nIHRoZSBoYXJk
aXJxIGxvY2tpbmcgY29udGV4dCBmb3IgdGhlIHdyaXRlCj4gPiAgICBzaWRlIGluIGxvY2tkZXAs
IGJ1dCB0aGlzIGZvcmNlcyBhbGwgbm9ybWFsIHNwaW5sb2NrcyBuZXN0ZWQgd2l0aGluCj4gPiAg
ICBkbWFfZmVuY2VfYmVnaW4vZW5kX3NpZ25hbGxpbmcgdG8gYmUgc3BpbmxvY2tzLiBUaGF0IGJv
bGxvY2tzLgo+ID4KPiA+ICAgIFRoZSBhcHByb2FjaCBub3cgaXMgdG8gc2ltcGxlIGNoZWNrIGlu
X2F0b21pYygpLCBhbmQgZm9yIHRoZXNlIGNhc2VzCj4gPiAgICBlbnRpcmVseSByZWx5IG9uIHRo
ZSBtaWdodF9zbGVlcCgpIGNoZWNrIGluIGRtYV9mZW5jZV93YWl0KCkuIFRoYXQKPiA+ICAgIHdp
bGwgY2F0Y2ggYW55IHdyb25nIG5lc3RpbmcgYWdhaW5zdCBzcGlubG9ja3MgZnJvbSBzb2Z0L2hh
cmRpcnEKPiA+ICAgIGNvbnRleHRzLgo+ID4KPiA+IFRoZSBpZGVhIGhlcmUgaXMgdGhhdCBldmVy
eSBjb2RlIHBhdGggdGhhdCdzIGNyaXRpY2FsIGZvciBldmVudHVhbGx5Cj4gPiBzaWduYWxsaW5n
IGEgZG1hX2ZlbmNlIHNob3VsZCBiZSBhbm5vdGF0ZWQgd2l0aAo+ID4gZG1hX2ZlbmNlX2JlZ2lu
L2VuZF9zaWduYWxsaW5nLiBUaGUgYW5ub3RhdGlvbiBpZGVhbGx5IHN0YXJ0cyByaWdodAo+ID4g
YWZ0ZXIgYSBkbWFfZmVuY2UgaXMgcHVibGlzaGVkIChhZGRlZCB0byBhIGRtYV9yZXN2LCBleHBv
c2VkIGFzIGEKPiA+IHN5bmNfZmlsZSBmZCwgYXR0YWNoZWQgdG8gYSBkcm1fc3luY29iaiBmZCwg
b3IgYW55dGhpbmcgZWxzZSB0aGF0Cj4gPiBtYWtlcyB0aGUgZG1hX2ZlbmNlIHZpc2libGUgdG8g
b3RoZXIga2VybmVsIHRocmVhZHMpLCB1cCB0byBhbmQKPiA+IGluY2x1ZGluZyB0aGUgZG1hX2Zl
bmNlX3dhaXQoKS4gRXhhbXBsZXMgYXJlIGlycSBoYW5kbGVycywgdGhlCj4gPiBzY2hlZHVsZXIg
cnQgdGhyZWFkcywgdGhlIHRhaWwgb2YgZXhlY2J1ZiAoYWZ0ZXIgdGhlIGNvcnJlc3BvbmRpbmcK
PiA+IGZlbmNlcyBhcmUgdmlzaWJsZSksIGFueSB3b3JrZXJzIHRoYXQgZW5kIHVwIHNpZ25hbGxp
bmcgZG1hX2ZlbmNlcyBhbmQKPiA+IHJlYWxseSBhbnl0aGluZyBlbHNlLiBOb3QgYW5ub3RhdGVk
IHNob3VsZCBiZSBjb2RlIHBhdGhzIHRoYXQgb25seQo+ID4gY29tcGxldGUgZmVuY2VzIG9wcG9y
dHVuaXN0aWNhbGx5IGFzIHRoZSBncHUgcHJvZ3Jlc3NlcywgbGlrZSBlLmcuCj4gPiBzaHJpbmtl
ci9ldmljdGlvbiBjb2RlLgo+ID4KPiA+IFRoZSBtYWluIGNsYXNzIG9mIGRlYWRsb2NrcyB0aGlz
IGlzIHN1cHBvc2VkIHRvIGNhdGNoIGFyZToKPiA+Cj4gPiBUaHJlYWQgQToKPiA+Cj4gPiAgICAg
ICBtdXRleF9sb2NrKEEpOwo+ID4gICAgICAgbXV0ZXhfdW5sb2NrKEEpOwo+ID4KPiA+ICAgICAg
IGRtYV9mZW5jZV9zaWduYWwoKTsKPiA+Cj4gPiBUaHJlYWQgQjoKPiA+Cj4gPiAgICAgICBtdXRl
eF9sb2NrKEEpOwo+ID4gICAgICAgZG1hX2ZlbmNlX3dhaXQoKTsKPiA+ICAgICAgIG11dGV4X3Vu
bG9jayhBKTsKPiA+Cj4gPiBUaHJlYWQgQiBpcyBibG9ja2VkIG9uIEEgc2lnbmFsbGluZyB0aGUg
ZmVuY2UsIGJ1dCBBIG5ldmVyIGdldHMgYXJvdW5kCj4gPiB0byB0aGF0IGJlY2F1c2UgaXQgY2Fu
bm90IGFjcXVpcmUgdGhlIGxvY2sgQS4KPiA+Cj4gPiBOb3RlIHRoYXQgZG1hX2ZlbmNlX3dhaXQo
KSBpcyBhbGxvd2VkIHRvIGJlIG5lc3RlZCB3aXRoaW4KPiA+IGRtYV9mZW5jZV9iZWdpbi9lbmRf
c2lnbmFsbGluZyBzZWN0aW9ucy4gVG8gYWxsb3cgdGhpcyB0byBoYXBwZW4gdGhlCj4gPiByZWFk
IGxvY2sgbmVlZHMgdG8gYmUgdXBncmFkZWQgdG8gYSB3cml0ZSBsb2NrLCB3aGljaCBtZWFucyB0
aGF0IGFueQo+ID4gb3RoZXIgbG9jayBpcyBhY3F1aXJlZCBiZXR3ZWVuIHRoZSBkbWFfZmVuY2Vf
YmVnaW5fc2lnbmFsbGluZygpIGNhbGwgYW5kCj4gPiB0aGUgY2FsbCB0byBkbWFfZmVuY2Vfd2Fp
dCgpLCBhbmQgc3RpbGwgaGVsZCwgdGhpcyB3aWxsIHJlc3VsdCBpbiBhbgo+ID4gaW1tZWRpYXRl
IGxvY2tkZXAgY29tcGxhaW50LiBUaGUgb25seSBvdGhlciBvcHRpb24gd291bGQgYmUgdG8gbm90
Cj4gPiBhbm5vdGF0ZSBzdWNoIGNhbGxzLCBkZWZlYXRpbmcgdGhlIHBvaW50LiBUaGVyZWZvcmUg
dGhlc2UgYW5ub3RhdGlvbnMKPiA+IGNhbm5vdCBiZSBzcHJpbmtsZWQgb3ZlciB0aGUgY29kZSBl
bnRpcmVseSBtaW5kbGVzcyB0byBhdm9pZCBmYWxzZQo+ID4gcG9zaXRpdmVzLgo+ID4KPiA+IHYy
OiBoYW5kbGUgc29mdC9oYXJkaXJxIGN0eCBiZXR0ZXIgYWdhaW5zdCB3cml0ZSBzaWRlIGFuZCBk
b250IGZvcmdldAo+ID4gRVhQT1JUX1NZTUJPTCwgZHJpdmVycyBjYW4ndCB1c2UgdGhpcyBvdGhl
cndpc2UuCj4gPgo+ID4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+ID4gQ2M6IGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+ID4gQ2M6IGxpbnV4LXJkbWFAdmdlci5rZXJu
ZWwub3JnCj4gPiBDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IENjOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFu
a2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGludGVsLmNvbT4KPgo+IExHVE0uIFBlcmhhcHMgc29tZSBpbi1jb2RlIGRvY3Vt
ZW50YXRpb24gb24gaG93IHRvIHVzZSB0aGUgbmV3IGZ1bmN0aW9ucwo+IGFyZSBjYWxsZWQuCgpT
ZWUgY292ZXIgbGV0dGVyLCB0aGF0J3MgZ29pbmcgdG8gYmUgZG9uZSBmb3IgbmV4dCByb3VuZC4g
Rm9yIHRoaXMgb25lCmhlcmUgSSBqdXN0IHdhbnRlZCB0byBzaG93Y2FzZSBhIGJpdCBob3cgaXQn
cyB1c2VkIGluIGEgZmV3IGRpZmZlcmVudApwbGFjZXMsIG1vc3RseSBzZWxlY3RlZCB0byBnZXQg
YXMgbXVjaCBmZWVkYmFjayBmcm9tIGFjcm9zcyBkaWZmZXJlbnQKZHJpdmVycy4gSGVuY2UgZS5n
LiBhbm5vdGF0aW5nIGRybS9zY2hlZHVsZXIuCgo+IE90aGVyd2lzZSBmb3IgcGF0Y2ggMiBhbmQg
MywKPgo+IFJldmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0cm9tIDx0aG9tYXMuaGVsbHN0cm9tQGlu
dGVsLmNvbT4KCkkgdGhpbmsgSSdsbCBqdXN0IGNjIHlvdSBmb3IgdGhlIG5leHQgcm91bmQgd2l0
aCBkb2NzLCBzbyB5b3UgY2FuIG1ha2UKc3VyZSBpdCBsb29rcyBvayA6LSkKLURhbmllbAotLSAK
RGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KKzQxICgw
KSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
