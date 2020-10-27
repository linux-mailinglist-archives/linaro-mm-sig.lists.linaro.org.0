Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7BF29A63E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Oct 2020 09:11:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6F39266464
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Oct 2020 08:11:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5A80066520; Tue, 27 Oct 2020 08:11:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW,SUBJ_OBFU_PUNCT_MANY
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D649C6651C;
	Tue, 27 Oct 2020 08:11:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BBAF76606D;
 Tue, 27 Oct 2020 08:11:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AA9A26651C; Tue, 27 Oct 2020 08:11:09 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id 110476606D;
 Tue, 27 Oct 2020 08:11:07 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id C9A7967373; Tue, 27 Oct 2020 09:11:03 +0100 (CET)
Date: Tue, 27 Oct 2020 09:11:03 +0100
From: "hch@lst.de" <hch@lst.de>
To: Parav Pandit <parav@nvidia.com>
Message-ID: <20201027081103.GA22877@lst.de>
References: <000000000000335adc05b23300f6@google.com>
 <000000000000a0f8a305b261fe4a@google.com>
 <20201024111516.59abc9ec@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <BY5PR12MB4322CC03CE0D34B83269676ADC190@BY5PR12MB4322.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BY5PR12MB4322CC03CE0D34B83269676ADC190@BY5PR12MB4322.namprd12.prod.outlook.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "linaro-mm-sig-owner@lists.linaro.org"
 <linaro-mm-sig-owner@lists.linaro.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "syzkaller-bugs@googlegroups.com" <syzkaller-bugs@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "hch@lst.de" <hch@lst.de>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 syzbot <syzbot+34dc2fea3478e659af01@syzkaller.appspotmail.com>,
 Jakub Kicinski <kuba@kernel.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "christian.koenig@amd.com" <christian.koenig@amd.com>,
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

T24gTW9uLCBPY3QgMjYsIDIwMjAgYXQgMDU6MjM6NDhBTSArMDAwMCwgUGFyYXYgUGFuZGl0IHdy
b3RlOgo+IEhpIENocmlzdG9waCwKPiAKPiA+IEZyb206IEpha3ViIEtpY2luc2tpIDxrdWJhQGtl
cm5lbC5vcmc+Cj4gPiBTZW50OiBTYXR1cmRheSwgT2N0b2JlciAyNCwgMjAyMCAxMTo0NSBQTQo+
ID4gCj4gPiBDQzogcmRtYSwgbG9va3MgbGlrZSByZG1hIGZyb20gdGhlIHN0YWNrIHRyYWNlCj4g
PiAKPiA+IE9uIEZyaSwgMjMgT2N0IDIwMjAgMjA6MDc6MTcgLTA3MDAgc3l6Ym90IHdyb3RlOgo+
ID4gPiBzeXpib3QgaGFzIGZvdW5kIGEgcmVwcm9kdWNlciBmb3IgdGhlIGZvbGxvd2luZyBpc3N1
ZSBvbjoKPiA+ID4KPiA+ID4gSEVBRCBjb21taXQ6ICAgIDNjYjEyZDI3IE1lcmdlIHRhZyAnbmV0
LTUuMTAtcmMxJyBvZiBnaXQ6Ly9naXQua2VybmVsLm9yZy8uLgo+IAo+IEluIFsxXSB5b3UgbWVu
dGlvbmVkIHRoYXQgZG1hX21hc2sgc2hvdWxkIG5vdCBiZSBzZXQgZm9yIGRtYV92aXJ0X29wcy4K
PiBTbyBwYXRjaCBbMl0gcmVtb3ZlZCBpdC4KPgo+IEJ1dCBjaGVjayB0byB2YWxpZGF0ZSB0aGUg
ZG1hIG1hc2sgZm9yIGFsbCBkbWFfb3BzIHdhcyBhZGRlZCBpbiBbM10uCj4gCj4gV2hhdCBpcyB0
aGUgcmlnaHQgd2F5PyBEaWQgSSBtaXN1bmRlcnN0b29kIHlvdXIgY29tbWVudCBhYm91dCBkbWFf
bWFzayBpbiBbMV0/CgpObywgSSBkaWQgbm90IHNheSB3ZSBkb24ndCBuZWVkIHRoZSBtYXNrLiAg
SSBzYWlkIGNvcHlpbmcgb3ZlciB0aGUKdmFyaW91cyBkbWEtcmVsYXRlZCBmaWVsZHMgZnJvbSB0
aGUgcGFyZW50IGlzIGJvZ3VzLgoKSSB0aGluayByeGUgKGFuZCB0aGVyIG90aGVyIGRyaXZlcnMv
aW5maW5pYmFuZC9zdyBkcml2ZXJzKSBuZWVkIGEgc2ltcGxlCmRtYV9jb2VyY2VfbWFza19hbmRf
Y29oZXJlbnQgYW5kIG5vdGhpbmcgZWxzZS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
