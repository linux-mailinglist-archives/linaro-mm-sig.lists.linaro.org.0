Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 475151502F7
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Feb 2020 10:07:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7146560190
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Feb 2020 09:07:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6568C6058E; Mon,  3 Feb 2020 09:07:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_PASS,SUBJ_OBFU_PUNCT_FEW,
	SUBJ_OBFU_PUNCT_MANY,UNPARSEABLE_RELAY autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 76D5660607;
	Mon,  3 Feb 2020 09:07:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2441F60190
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Feb 2020 09:06:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EF06660607; Mon,  3 Feb 2020 09:06:58 +0000 (UTC)
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by lists.linaro.org (Postfix) with ESMTPS id DE19E60190
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Feb 2020 09:06:57 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 013934fr088127;
 Mon, 3 Feb 2020 09:06:41 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2xw19q69g5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 03 Feb 2020 09:06:40 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 01393JHS177625;
 Mon, 3 Feb 2020 09:06:40 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2xwjt3e3un-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 03 Feb 2020 09:06:39 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 01396Ywj008538;
 Mon, 3 Feb 2020 09:06:35 GMT
Received: from kadam (/41.210.143.134) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 03 Feb 2020 01:06:31 -0800
Date: Mon, 3 Feb 2020 12:06:19 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20200203090619.GL1778@kadam>
References: <000000000000ae2f81059d7716b8@google.com>
 <CAKMK7uGivsYzP6h9rg0eN34YuOVbee6gnhdOxiys=M=4phK+kw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uGivsYzP6h9rg0eN34YuOVbee6gnhdOxiys=M=4phK+kw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9519
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2002030073
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9519
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2002030073
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Clark <robdclark@chromium.org>, David Miller <davem@davemloft.net>,
 Dave Airlie <airlied@linux.ie>, netdev <netdev@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 "Anholt, Eric" <eric@anholt.net>, Sean Paul <seanpaul@chromium.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 syzbot <syzbot+0dc4444774d419e916c8@syzkaller.appspotmail.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Emil Velikov <emil.velikov@collabora.com>
Subject: Re: [Linaro-mm-sig] KASAN: use-after-free Read in
	vgem_gem_dumb_create
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

T24gU3VuLCBGZWIgMDIsIDIwMjAgYXQgMDI6MTk6MThQTSArMDEwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBPbiBGcmksIEphbiAzMSwgMjAyMCBhdCAxMToyOCBQTSBzeXpib3QKPiA8c3l6Ym90
KzBkYzQ0NDQ3NzRkNDE5ZTkxNmM4QHN5emthbGxlci5hcHBzcG90bWFpbC5jb20+IHdyb3RlOgo+
ID4KPiA+IEhlbGxvLAo+ID4KPiA+IHN5emJvdCBmb3VuZCB0aGUgZm9sbG93aW5nIGNyYXNoIG9u
Ogo+ID4KPiA+IEhFQUQgY29tbWl0OiAgICAzOWJlZDQyZCBNZXJnZSB0YWcgJ2Zvci1saW51cy1o
bW0nIG9mIGdpdDovL2dpdC5rZXJuZWwub3JnLi4KPiA+IGdpdCB0cmVlOiAgICAgICB1cHN0cmVh
bQo+ID4gY29uc29sZSBvdXRwdXQ6IGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvbG9n
LnR4dD94PTE3OTQ2NWJlZTAwMDAwCj4gPiBrZXJuZWwgY29uZmlnOiAgaHR0cHM6Ly9zeXprYWxs
ZXIuYXBwc3BvdC5jb20veC8uY29uZmlnP3g9MjY0NjUzNWY4ODE4YWUyNQo+ID4gZGFzaGJvYXJk
IGxpbms6IGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL2J1Zz9leHRpZD0wZGM0NDQ0Nzc0
ZDQxOWU5MTZjOAo+ID4gY29tcGlsZXI6ICAgICAgIGdjYyAoR0NDKSA5LjAuMCAyMDE4MTIzMSAo
ZXhwZXJpbWVudGFsKQo+ID4gc3l6IHJlcHJvOiAgICAgIGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNw
b3QuY29tL3gvcmVwcm8uc3l6P3g9MTYyNTEyNzllMDAwMDAKPiA+Cj4gPiBUaGUgYnVnIHdhcyBi
aXNlY3RlZCB0bzoKPiA+Cj4gPiBjb21taXQgNzYxMTc1MDc4NDY2NGRiNDZkMGRiOTU2MzFlMzIy
YWViMjYzZGRlNwo+ID4gQXV0aG9yOiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFt
ZC5jb20+Cj4gPiBEYXRlOiAgIFdlZCBKdW4gMjEgMTY6MzE6NDEgMjAxNyArMDAwMAo+ID4KPiA+
ICAgICBkcm0vYW1kZ3B1OiB1c2Uga2VybmVsIGlzX3Bvd2VyX29mXzIgcmF0aGVyIHRoYW4gbG9j
YWwgdmVyc2lvbgo+ID4KPiA+IGJpc2VjdGlvbiBsb2c6ICBodHRwczovL3N5emthbGxlci5hcHBz
cG90LmNvbS94L2Jpc2VjdC50eHQ/eD0xMTYyOGRmMWUwMDAwMAo+ID4gZmluYWwgY3Jhc2g6ICAg
IGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvcmVwb3J0LnR4dD94PTEzNjI4ZGYxZTAw
MDAwCj4gPiBjb25zb2xlIG91dHB1dDogaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9s
b2cudHh0P3g9MTU2MjhkZjFlMDAwMDAKPiA+Cj4gPiBJTVBPUlRBTlQ6IGlmIHlvdSBmaXggdGhl
IGJ1ZywgcGxlYXNlIGFkZCB0aGUgZm9sbG93aW5nIHRhZyB0byB0aGUgY29tbWl0Ogo+ID4gUmVw
b3J0ZWQtYnk6IHN5emJvdCswZGM0NDQ0Nzc0ZDQxOWU5MTZjOEBzeXprYWxsZXIuYXBwc3BvdG1h
aWwuY29tCj4gPiBGaXhlczogNzYxMTc1MDc4NDY2ICgiZHJtL2FtZGdwdTogdXNlIGtlcm5lbCBp
c19wb3dlcl9vZl8yIHJhdGhlciB0aGFuIGxvY2FsIHZlcnNpb24iKQo+IAo+IEFzaWRlOiBUaGlz
IGJpc2VjdCBsaW5lIGlzIGNvbXBsZXRlIG5vbnNlbnNlIC4uLiBJJ20ga2luZGEgYXQgdGhlCj4g
cG9pbnQgd2hlcmUgSSdtIGFzc3VtaW5nIHRoYXQgc3l6Ym90IGJpc2VjdCByZXN1bHRzIGFyZSBn
YXJiYWdlLCB3aGljaAo+IGlzIG1heWJlIG5vdCB3aGF0IHdlIHdhbnQuIEkgZ3Vlc3MgbXVjaCBz
dHJpY3RlciBmaWx0ZXJpbmcgZm9yIG5vaXNlCj4gaXMgbmVlZGVkLCBkdW5uby4KPiAtRGFuaWxl
CgpXaXRoIHJhY2UgY29uZGl0aW9ucyB0aGUgZ2l0IGJpc2VjdCBpcyBvZnRlbiBub25zZW5zZS4K
CnJlZ2FyZHMsCmRhbiBjYXJwZW50ZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
