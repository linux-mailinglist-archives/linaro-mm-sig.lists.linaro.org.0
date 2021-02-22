Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C877321D19
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Feb 2021 17:35:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 52F2866008
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Feb 2021 16:35:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 46EE3667D2; Mon, 22 Feb 2021 16:35:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9041B667D0;
	Mon, 22 Feb 2021 16:34:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 88D4666008
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Feb 2021 16:34:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7B91B667D0; Mon, 22 Feb 2021 16:34:55 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by lists.linaro.org (Postfix) with ESMTPS id 5C07066008
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Feb 2021 16:34:53 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id a207so14997256wmd.1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Feb 2021 08:34:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=BYqBSh+RtOGP1AbAbL6ridYFs/D4712lyryymR5Pa9c=;
 b=EZUhdZAKwTSfignZ0o8iYvhLnj03nKeuWSd5zCR9VvTYhdsex7Yskwy6uMC4aO/IOx
 4PiaUniQCWGeuITT0Rvo7bHLcz6PtHKTRtQcTTKyRIKhLjhdBIMeUzxsOQkCv/b1ZnYQ
 gjK48wF2gqPFEJjtvakGcfoXhmnnYNIb85fTiXgtB8yExemyYW7UcVz14j30CmAkED/X
 bE7wDbE1yHw9MI6ujqj4vlkzC21RVajUj12RKlzOaX9Mg9IsYYwrGxu63bF+Xkf3Qeod
 wWfFFtcwj+m/lT2HBa/GwSLN/wZVdwfQlz+UUUKZ2emGLYs4uiGn6CJbWpfQSKJ/mdf7
 KqTQ==
X-Gm-Message-State: AOAM530yO6pifUiP1Jmz1ptC5e78+XqqsdFV1+AsVbfrPrYjenDw79uZ
 BrgJiNzavpTINFT/PGYpFau3TPtPpKGrLQ==
X-Google-Smtp-Source: ABdhPJxWnZwVKISs5Gvna+rbo0tUawFe9j4tFr8dzPrnrJfseaXhp8z0m23nCHWfr40ob/8M+QsKYA==
X-Received: by 2002:a05:600c:2113:: with SMTP id
 u19mr6333277wml.30.1614011692591; 
 Mon, 22 Feb 2021 08:34:52 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id e12sm28735850wrv.59.2021.02.22.08.34.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Feb 2021 08:34:52 -0800 (PST)
Date: Mon, 22 Feb 2021 17:34:50 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <YDPdKoTewh6HMhVM@phenom.ffwll.local>
References: <20210222124328.27340-1-tzimmermann@suse.de>
 <b190801b-b8be-c9df-f203-3e42eb97cea4@amd.com>
 <238ce852-730b-e31c-a6fe-a9ecaca497e3@suse.de>
 <CAKMK7uE4QxaiGCAX6pYq=dCg5zzs9Jg9iRSjq893OmAZk=OrpA@mail.gmail.com>
 <4246f9d2-2ce8-151a-fd92-8cf10510adec@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4246f9d2-2ce8-151a-fd92-8cf10510adec@suse.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: lima@lists.freedesktop.org, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Dave Airlie <airlied@linux.ie>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, Qiang Yu <yuq825@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH v2 0/3] drm/prime: Only call
 dma_map_sgtable() for devices with DMA support
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

T24gTW9uLCBGZWIgMjIsIDIwMjEgYXQgMDU6MjU6NDZQTSArMDEwMCwgVGhvbWFzIFppbW1lcm1h
bm4gd3JvdGU6Cj4gSGkKPiAKPiBBbSAyMi4wMi4yMSB1bSAxNzoxMCBzY2hyaWViIERhbmllbCBW
ZXR0ZXI6Cj4gPiBPbiBNb24sIEZlYiAyMiwgMjAyMSBhdCAyOjI0IFBNIFRob21hcyBaaW1tZXJt
YW5uIDx0emltbWVybWFubkBzdXNlLmRlPiB3cm90ZToKPiA+ID4gCj4gPiA+IEhpCj4gPiA+IAo+
ID4gPiBBbSAyMi4wMi4yMSB1bSAxNDowOSBzY2hyaWViIENocmlzdGlhbiBLw7ZuaWc6Cj4gPiA+
ID4gCj4gPiA+ID4gCj4gPiA+ID4gQW0gMjIuMDIuMjEgdW0gMTM6NDMgc2NocmllYiBUaG9tYXMg
WmltbWVybWFubjoKPiA+ID4gPiA+IFVTQi1iYXNlZCBkcml2ZXJzIGNhbm5vdCB1c2UgRE1BLCBz
byB0aGUgaW1wb3J0aW5nIG9mIGRtYS1idWYgYXR0YWNobWVudHMKPiA+ID4gPiA+IGN1cnJlbnRs
eSBmYWlscyBmb3IgdWRsIGFuZCBnbTEydTMyMC4gVGhpcyBicmVha3Mgam9pbmluZy9taXJyb3Jp
bmcgb2YKPiA+ID4gPiA+IGRpc3BsYXlzLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBUaGUgZml4IGlz
IG5vdyBhIGxpdHRsZSBzZXJpZXMuIFRvIHNvbHZlIHRoZSBpc3N1ZSBvbiB0aGUgaW1wb3J0ZXIK
PiA+ID4gPiA+IHNpZGUgKGkuZS4sIHRoZSBhZmZlY3RlZCBVU0ItYmFzZWQgZHJpdmVyKSwgcGF0
Y2ggMSBpbnRyb2R1Y2VzIGEgbmV3Cj4gPiA+ID4gPiBQUklNRSBjYWxsYmFjaywgc3RydWN0IGRy
bV9kcml2ZXIuZ2VtX3ByaW1lX2NyZWF0ZV9vYmplY3QsIHdoaWNoIGNyZWF0ZXMKPiA+ID4gPiA+
IGFuIG9iamVjdCBhbmQgZ2l2ZXMgbW9yZSBjb250cm9sIHRvIHRoZSBpbXBvcnRpbmcgZHJpdmVy
LiBTcGVjaWZpY2FsbHksCj4gPiA+ID4gPiB1ZGwgYW5kIGdtMTJ1MzIwIGNhbiBub3cgYXZvaWQg
dGhlIGNyZWF0aW9uIG9mIGEgc2NhdHRlci9nYXRoZXIgdGFibGUKPiA+ID4gPiA+IGZvciB0aGUg
aW1wb3J0ZWQgcGFnZXMuIFBhdGNoIDEgaXMgc2VsZi1jb250YWluZWQgaW4gdGhlIHNlbnNlIHRo
YXQgaXQKPiA+ID4gPiA+IGNhbiBiZSBiYWNrcG9ydGVkIGludG8gb2xkZXIga2VybmVscy4KPiA+
ID4gPiAKPiA+ID4gPiBNaG0sIHRoYXQgc291bmRzIGxpa2UgYSBsaXR0bGUgb3ZlcmtpbGwgdG8g
bWUuCj4gPiA+ID4gCj4gPiA+ID4gRHJpdmVycyBjYW4gYWxyZWFkeSBpbXBvcnQgdGhlIERNQS1i
dWZzIGFsbCBieSB0aGVtIHNlbHZlcyB3aXRob3V0IHRoZQo+ID4gPiA+IGhlbHAgb2YgdGhlIERS
TSBmdW5jdGlvbnMuIFNlZSBhbWRncHUgZm9yIGFuIGV4YW1wbGUuCj4gPiA+ID4gCj4gPiA+ID4g
RGFuaWVsIGFsc28gYWxyZWFkeSBub3RlZCB0byBtZSB0aGF0IGhlIHNlZXMgdGhlIERSTSBoZWxw
ZXIgYXMgYSBiaXQKPiA+ID4gPiBxdWVzdGlvbmFibGUgbWlkZGxlIGxheWVyLgo+ID4gPiAKPiA+
ID4gQW5kIHRoaXMgYnVnIHByb3ZlcyB0aGF0IGl0IGlzLiA6KQo+ID4gCj4gPiBUaGUgdHJvdWJs
ZSBoZXJlIGlzIGFjdHVhbGx5IGdlbV9iby0+aW1wb3J0X2F0dGFjaCwgd2hpY2ggaXNuJ3QgcmVh
bGx5Cj4gPiBwYXJ0IG9mIHRoZSBxdWVzdGlvbmFibGUgbWlkbGF5ZXIsIGJ1dCBmYWlybHkgbWFu
ZGF0b3J5IChvbmx5Cj4gPiBleGNlcHRpb24gaXMgdm13Z2Z4IGJlY2F1c2Ugbm90IHVzaW5nIGdl
bSkgY2FjaGluZyB0byBtYWtlIHN1cmUgd2UKPiA+IGRvbid0IGVuZCB1cCB3aXRoIGR1cGVkIGlt
cG9ydHMgYW5kIGZ1biBzdHVmZiBsaWtlIHRoYXQuCj4gPiAKPiA+IEFuZCBkbWFfYnVmX2F0dGFj
aCBub3cgaW1wbGljaXRseSBjcmVhdGVzIHRoZSBzZyB0YWJsZSBhbHJlYWR5LCBzbwo+ID4gd2Un
cmUgYWxyZWFkeSBpbiBnYW1lIG92ZXIgbGFuZC4gSSB0aGluayB3ZSdkIG5lZWQgdG8gbWFrZQo+
ID4gaW1wb3J0X2F0dGFjaCBhIHVuaW9uIHdpdGggaW1wb3J0X2J1ZiBvciBzb21ldGhpbmcgbGlr
ZSB0aGF0LCBzbyB0aGF0Cj4gPiB5b3UgY2FuIGRvIGF0dGFjaG1lbnQtbGVzcyBpbXBvcnRpbmcu
Cj4gCj4gQ3JlYXRpbmcgdGhlIHNnIHRhYmxlIGlzIG5vdCB0aGUgcHJvYmxlbTsgbWFwcGluZyBp
dCBpcy4gU28gZG1hX2J1Zl9hdHRhY2gKPiBzaG91bGRuJ3QgYmUgYSBwcm9ibGVtLgoKZG1hX2J1
Zl9hdHRhY2ggd2lsbCBjcmVhdGUgYSBjYWNoZWQgc2ctbWFwcGluZyBmb3IgeW91IGlmIHRoZSBl
eHBvcnRlciBpcwpkeW5hbWljLiBDdXJyZW50bHkgdGhhdCdzIG9ubHkgdGhlIGNhc2UgZm9yIGFt
ZGdwdSwgSSBndWVzcyB5b3UgZGlkbid0CnRlc3Qgd2l0aCB0aGF0LgoKU28geWVhaCBkbWFfYnVm
X2F0dGFjaCBpcyBhIHByb2JsZW0gYWxyZWFkeS4gQW5kIGlmIHdlIGNhbid0IGF0dGFjaCwgdGhl
CmVudGlyZSBvYmotPmltcG9ydF9hdHRhY2ggbG9naWMgaW4gZHJtX3ByaW1lLmMgZmFsbHMgb3Zl
ciwgYW5kIHdlIGdldCBhbGwKa2luZHMgb2YgZnVuIHdpdGggZG91YmxlIGltcG9ydCBhbmQgcmUt
ZXhwb3J0LgoKPiA+ID4gPiBIYXZlIHlvdSB0aG91Z2h0IGFib3V0IGRvaW5nIHRoYXQgaW5zdGVh
ZD8KPiA+ID4gCj4gPiA+IFRoZXJlIGFwcGVhcnMgdG8gYmUgc29tZSB1c2VmdWwgY29kZSBpbiBk
cm1fZ2VtX3ByaW1lX2ltcG9ydF9kZXYoKS4gQnV0Cj4gPiA+IGlmIHRoZSBnZW5lcmFsIHNlbnRp
bWVudCBnb2VzIHRvd2FyZHMgcmVtb3ZpbmcKPiA+ID4gZ2VtX3ByaW1lX2ltcG9ydF9zZ190YWJs
ZSwgd2UgY2FuIHdvcmsgdG93YXJkcyB0aGF0IGFzIHdlbGwuCj4gPiAKPiA+IEkgc3RpbGwgdGhp
bmsgdGhpcyBwYXJ0IGlzIGEgYml0IGEgc2lsbHkgbWlkbGF5ZXIgZm9yIG5vIGdvb2QgcmVhc29u
LAo+ID4gYnV0IEkgdGhpbmsgdGhhdCdzIG9ydGhvZ29uYWwgdG8gdGhlIGlzc3VlIGF0IGhhbmQg
aGVyZS4KPiA+IAo+ID4gSSdkIHN1Z2dlc3Qgd2UgZmlyc3QgdHJ5IHRvIHBhcGVyIG92ZXIgdGhl
IGlzc3VlIGJ5IHVzaW5nCj4gPiBwcmltZV9pbXBvcnRfZGV2IHdpdGggdGhlIGhvc3QgY29udHJv
bGxlciAod2hpY2ggaG9wZWZ1bGx5IGlzCj4gPiBkbWEtY2FwYWJsZSBmb3IgbW9zdCBzeXN0ZW1z
KS4gQW5kIHRoZW4sIGF0IGxlaXN1cmUsIHRyeSB0byB1bnRhbmdsZQo+ID4gdGhlIG9iai0+aW1w
b3J0X2F0dGFjaCBpc3N1ZS4KPiAKPiBJIHJlYWxseSBkb24ndCB3YW50IHRvIGRvIHRoaXMuIE15
IHRpbWUgaXMgYWxzbyBsaW1pdGVkLCBhbmQgSScnbGwgc3BlbmQKPiB0aW1lIHBhcGVyaW5nIG92
ZXIgdGhlIHRoaW5nLiBBbmQgdGhlbiBtb3JlIHRpbWUgZm9yIHRoZSByZWFsIGZpeC4gSSdkCj4g
cmF0aGVyIHB1bGwgZHJtX2dlbV9wcmltZV9pbXBvcnRfZGV2KCkgaW4gdG8gVVNCIGRyaXZlcnMg
YW5kIGF2b2lkIHRoZQo+IGRtYV9idWZfbWFwKCkuCgpZZWFoIEkgdW5kZXJzdGFuZCwgaXQncyBq
dXN0IChhcyB1c3VhbCA6LS8pIG1vcmUgY29tcGxleCB0aGFuIGl0IHNlZW1zIC4uLgotRGFuaWVs
Cgo+IAo+IEJlc3QgcmVnYXJkCj4gVGhvbWFzCj4gCj4gPiAtRGFuaWVsCj4gPiAKPiA+ID4gCj4g
PiA+IEJlc3QgcmVnYXJkcwo+ID4gPiBUaG9tYXMKPiA+ID4gCj4gPiA+ID4gCj4gPiA+ID4gQ2hy
aXN0aWFuLgo+ID4gPiA+IAo+ID4gPiA+ID4gCj4gPiA+ID4gPiBQYXRjaGVzIDIgYW5kIDMgdXBk
YXRlIFNITUVNIGFuZCBDTUEgaGVscGVycyB0byB1c2UgdGhlIG5ldyBjYWxsYmFjay4KPiA+ID4g
PiA+IEVmZmVjdGl2ZWx5IHRoaXMgbW92ZXMgdGhlIHNnIHRhYmxlIHNldHVwIGZyb20gdGhlIFBS
SU1FIGhlbHBlcnMgaW50bwo+ID4gPiA+ID4gdGhlIG1lbW9yeSBtYW5hZ2Vycy4gU0hNRU0gbm93
IHN1cHBvcnRzIGRldmljZXMgd2l0aG91dCBETUEgc3VwcG9ydCwKPiA+ID4gPiA+IHNvIGN1c3Rv
bSBjb2RlIGNhbiBiZSByZW1vdmVkIGZyb20gdWRsIGFuZCBnMTJ1MzIwLgo+ID4gPiA+ID4gCj4g
PiA+ID4gPiBUZXN0ZWQgYnkgam9pbmluZy9taXJyb3JpbmcgZGlzcGxheXMgb2YgdWRsIGFuZCBy
YWRlb24gdW5kZXIgR25vbWUvWDExLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiB2MjoKPiA+ID4gPiA+
ICAgICAgKiBtb3ZlIGZpeCB0byBpbXBvcnRlciBzaWRlIChDaHJpc3RpYW4sIERhbmllbCkKPiA+
ID4gPiA+ICAgICAgKiB1cGRhdGUgU0hNRU0gYW5kIENNQSBoZWxwZXJzIGZvciBuZXcgUFJJTUUg
Y2FsbGJhY2tzCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRob21hcyBaaW1tZXJtYW5uICgzKToKPiA+
ID4gPiA+ICAgICBkcm06IFN1cHBvcnQgaW1wb3J0aW5nIGRtYWJ1ZnMgaW50byBkcml2ZXJzIHdp
dGhvdXQgRE1BCj4gPiA+ID4gPiAgICAgZHJtL3NobWVtLWhlbHBlcjogSW1wbGVtZW50IHN0cnVj
dCBkcm1fZHJpdmVyLmdlbV9wcmltZV9jcmVhdGVfb2JqZWN0Cj4gPiA+ID4gPiAgICAgZHJtL2Nt
YS1oZWxwZXI6IEltcGxlbWVudCBzdHJ1Y3QgZHJtX2RyaXZlci5nZW1fcHJpbWVfY3JlYXRlX29i
amVjdAo+ID4gPiA+ID4gCj4gPiA+ID4gPiAgICBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9jbWFf
aGVscGVyLmMgICAgfCA2MiArKysrKysrKysrKysrKy0tLS0tLS0tLS0tCj4gPiA+ID4gPiAgICBk
cml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYyAgfCAzOCArKysrKysrKysrLS0t
LS0KPiA+ID4gPiA+ICAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYyAgICAgICAgICAgICB8
IDQzICsrKysrKysrKysrLS0tLS0tCj4gPiA+ID4gPiAgICBkcml2ZXJzL2dwdS9kcm0vbGltYS9s
aW1hX2Rydi5jICAgICAgICAgfCAgMiArLQo+ID4gPiA+ID4gICAgZHJpdmVycy9ncHUvZHJtL3Bh
bmZyb3N0L3BhbmZyb3N0X2Rydi5jIHwgIDIgKy0KPiA+ID4gPiA+ICAgIGRyaXZlcnMvZ3B1L2Ry
bS9wYW5mcm9zdC9wYW5mcm9zdF9nZW0uYyB8ICA2ICstLQo+ID4gPiA+ID4gICAgZHJpdmVycy9n
cHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2dlbS5oIHwgIDQgKy0KPiA+ID4gPiA+ICAgIGRyaXZl
cnMvZ3B1L2RybS9wbDExMS9wbDExMV9kcnYuYyAgICAgICB8ICA4ICsrLS0KPiA+ID4gPiA+ICAg
IGRyaXZlcnMvZ3B1L2RybS92M2QvdjNkX2JvLmMgICAgICAgICAgICB8ICA2ICstLQo+ID4gPiA+
ID4gICAgZHJpdmVycy9ncHUvZHJtL3YzZC92M2RfZHJ2LmMgICAgICAgICAgIHwgIDIgKy0KPiA+
ID4gPiA+ICAgIGRyaXZlcnMvZ3B1L2RybS92M2QvdjNkX2Rydi5oICAgICAgICAgICB8ICA1ICst
Cj4gPiA+ID4gPiAgICBpbmNsdWRlL2RybS9kcm1fZHJ2LmggICAgICAgICAgICAgICAgICAgfCAx
MiArKysrKwo+ID4gPiA+ID4gICAgaW5jbHVkZS9kcm0vZHJtX2dlbV9jbWFfaGVscGVyLmggICAg
ICAgIHwgMTIgKystLS0KPiA+ID4gPiA+ICAgIGluY2x1ZGUvZHJtL2RybV9nZW1fc2htZW1faGVs
cGVyLmggICAgICB8ICA2ICstLQo+ID4gPiA+ID4gICAgMTQgZmlsZXMgY2hhbmdlZCwgMTIwIGlu
c2VydGlvbnMoKyksIDg4IGRlbGV0aW9ucygtKQo+ID4gPiA+ID4gCj4gPiA+ID4gPiAtLQo+ID4g
PiA+ID4gMi4zMC4xCj4gPiA+ID4gPiAKPiA+ID4gPiAKPiA+ID4gCj4gPiA+IC0tCj4gPiA+IFRo
b21hcyBaaW1tZXJtYW5uCj4gPiA+IEdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXIKPiA+ID4gU1VT
RSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICj4gPiA+IE1heGZlbGRzdHIuIDUsIDkw
NDA5IE7DvHJuYmVyZywgR2VybWFueQo+ID4gPiAoSFJCIDM2ODA5LCBBRyBOw7xybmJlcmcpCj4g
PiA+IEdlc2Now6RmdHNmw7xocmVyOiBGZWxpeCBJbWVuZMO2cmZmZXIKPiA+ID4gCj4gPiAKPiA+
IAo+IAo+IC0tIAo+IFRob21hcyBaaW1tZXJtYW5uCj4gR3JhcGhpY3MgRHJpdmVyIERldmVsb3Bl
cgo+IFNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSAo+IE1heGZlbGRzdHIuIDUs
IDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQo+IChIUkIgMzY4MDksIEFHIE7DvHJuYmVyZykKPiBH
ZXNjaMOkZnRzZsO8aHJlcjogRmVsaXggSW1lbmTDtnJmZmVyCj4gCgoKCgotLSAKRGFuaWVsIFZl
dHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3
bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
