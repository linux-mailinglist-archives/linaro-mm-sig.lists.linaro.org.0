Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8E529D156
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Oct 2020 18:31:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A3B766614
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Oct 2020 17:31:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1E3EC6663B; Wed, 28 Oct 2020 17:31:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW,SUBJ_OBFU_PUNCT_MANY
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 563D160FF8;
	Wed, 28 Oct 2020 17:31:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2A32960FF8;
 Wed, 28 Oct 2020 17:31:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0D62466009; Wed, 28 Oct 2020 17:31:13 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id B4B1060FF8;
 Wed, 28 Oct 2020 17:31:11 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7742C68BFE; Wed, 28 Oct 2020 18:31:08 +0100 (CET)
Date: Wed, 28 Oct 2020 18:31:08 +0100
From: "hch@lst.de" <hch@lst.de>
To: Parav Pandit <parav@nvidia.com>
Message-ID: <20201028173108.GA10135@lst.de>
References: <000000000000335adc05b23300f6@google.com>
 <000000000000a0f8a305b261fe4a@google.com>
 <20201024111516.59abc9ec@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <BY5PR12MB4322CC03CE0D34B83269676ADC190@BY5PR12MB4322.namprd12.prod.outlook.com>
 <20201027081103.GA22877@lst.de>
 <BY5PR12MB43221380BB0259FF0693BB0CDC160@BY5PR12MB4322.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BY5PR12MB43221380BB0259FF0693BB0CDC160@BY5PR12MB4322.namprd12.prod.outlook.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "linaro-mm-sig-owner@lists.linaro.org"
 <linaro-mm-sig-owner@lists.linaro.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "syzkaller-bugs@googlegroups.com" <syzkaller-bugs@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "christian.koenig@amd.com" <christian.koenig@amd.com>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 syzbot <syzbot+34dc2fea3478e659af01@syzkaller.appspotmail.com>,
 Jakub Kicinski <kuba@kernel.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>, "hch@lst.de" <hch@lst.de>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] WARNING in dma_map_page_attrs
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

T24gVHVlLCBPY3QgMjcsIDIwMjAgYXQgMTI6NTI6MzBQTSArMDAwMCwgUGFyYXYgUGFuZGl0IHdy
b3RlOgo+IAo+ID4gRnJvbTogaGNoQGxzdC5kZSA8aGNoQGxzdC5kZT4KPiA+IFNlbnQ6IFR1ZXNk
YXksIE9jdG9iZXIgMjcsIDIwMjAgMTo0MSBQTQo+ID4gCj4gPiBPbiBNb24sIE9jdCAyNiwgMjAy
MCBhdCAwNToyMzo0OEFNICswMDAwLCBQYXJhdiBQYW5kaXQgd3JvdGU6Cj4gPiA+IEhpIENocmlz
dG9waCwKPiA+ID4KPiA+ID4gPiBGcm9tOiBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3Jn
Pgo+ID4gPiA+IFNlbnQ6IFNhdHVyZGF5LCBPY3RvYmVyIDI0LCAyMDIwIDExOjQ1IFBNCj4gPiA+
ID4KPiA+ID4gPiBDQzogcmRtYSwgbG9va3MgbGlrZSByZG1hIGZyb20gdGhlIHN0YWNrIHRyYWNl
Cj4gPiA+ID4KPiA+ID4gPiBPbiBGcmksIDIzIE9jdCAyMDIwIDIwOjA3OjE3IC0wNzAwIHN5emJv
dCB3cm90ZToKPiA+ID4gPiA+IHN5emJvdCBoYXMgZm91bmQgYSByZXByb2R1Y2VyIGZvciB0aGUg
Zm9sbG93aW5nIGlzc3VlIG9uOgo+ID4gPiA+ID4KPiA+ID4gPiA+IEhFQUQgY29tbWl0OiAgICAz
Y2IxMmQyNyBNZXJnZSB0YWcgJ25ldC01LjEwLXJjMScgb2YKPiA+IGdpdDovL2dpdC5rZXJuZWwu
b3JnLy4uCj4gPiA+Cj4gPiA+IEluIFsxXSB5b3UgbWVudGlvbmVkIHRoYXQgZG1hX21hc2sgc2hv
dWxkIG5vdCBiZSBzZXQgZm9yIGRtYV92aXJ0X29wcy4KPiA+ID4gU28gcGF0Y2ggWzJdIHJlbW92
ZWQgaXQuCj4gPiA+Cj4gPiA+IEJ1dCBjaGVjayB0byB2YWxpZGF0ZSB0aGUgZG1hIG1hc2sgZm9y
IGFsbCBkbWFfb3BzIHdhcyBhZGRlZCBpbiBbM10uCj4gPiA+Cj4gPiA+IFdoYXQgaXMgdGhlIHJp
Z2h0IHdheT8gRGlkIEkgbWlzdW5kZXJzdG9vZCB5b3VyIGNvbW1lbnQgYWJvdXQKPiA+IGRtYV9t
YXNrIGluIFsxXT8KPiA+IAo+ID4gTm8sIEkgZGlkIG5vdCBzYXkgd2UgZG9uJ3QgbmVlZCB0aGUg
bWFzay4gIEkgc2FpZCBjb3B5aW5nIG92ZXIgdGhlIHZhcmlvdXMKPiA+IGRtYS1yZWxhdGVkIGZp
ZWxkcyBmcm9tIHRoZSBwYXJlbnQgaXMgYm9ndXMuCj4gPiAKPiA+IEkgdGhpbmsgcnhlIChhbmQg
dGhlciBvdGhlciBkcml2ZXJzL2luZmluaWJhbmQvc3cgZHJpdmVycykgbmVlZCBhIHNpbXBsZQo+
ID4gZG1hX2NvZXJjZV9tYXNrX2FuZF9jb2hlcmVudCBhbmQgbm90aGluZyBlbHNlLgo+IAo+IEkg
c2VlLiBEb2VzIGJlbG93IGZpeCBtYWtlIHNlbnNlPwo+IElzIERNQV9NQVNLX05PTkUgY29ycmVj
dD8KCkRNQV9NQVNLX05PTkUgaXMgZ29uZSBpbiA1LjEwLiAgSSB0aGluayB5b3Ugd2FudCBETUFf
QklUX01BU0soNjQpLgpUaGF0IGlzbid0IGFjdHVhbGx5IGNvcnJlY3QgZm9yIDMyLWJpdCBwbGF0
Zm9ybXMsIGJ1dCBnb29kIGVub3VnaC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK
