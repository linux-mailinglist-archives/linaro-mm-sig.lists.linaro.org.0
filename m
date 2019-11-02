Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5CFECDC4
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  2 Nov 2019 09:46:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B4F36194F
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  2 Nov 2019 08:46:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8B9706197E; Sat,  2 Nov 2019 08:46:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,BIGNUM_EMAILS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,UNPARSEABLE_RELAY
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7DF96197D;
	Sat,  2 Nov 2019 08:45:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A8FF8617BF
 for <linaro-mm-sig@lists.linaro.org>; Sat,  2 Nov 2019 08:45:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8A7576197D; Sat,  2 Nov 2019 08:45:43 +0000 (UTC)
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by lists.linaro.org (Postfix) with ESMTPS id 69250617BF
 for <linaro-mm-sig@lists.linaro.org>; Sat,  2 Nov 2019 08:45:42 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA28gq1M125162;
 Sat, 2 Nov 2019 08:45:37 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2w117th1bh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 02 Nov 2019 08:45:37 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA28ifCb032971;
 Sat, 2 Nov 2019 08:45:36 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2w0yucj3k0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 02 Nov 2019 08:45:36 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xA28jZ0Q001614;
 Sat, 2 Nov 2019 08:45:36 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sat, 02 Nov 2019 01:45:35 -0700
Date: Sat, 2 Nov 2019 11:45:28 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: John Stultz <john.stultz@linaro.org>
Message-ID: <20191102084528.GA21796@kadam>
References: <20191031110736.GD26612@mwanda>
 <CALAqxLUtnZsw0q_5JFtyVjbnxeMUTND=Vt8XgS44iQ_n391XFQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALAqxLUtnZsw0q_5JFtyVjbnxeMUTND=Vt8XgS44iQ_n391XFQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9428
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1911020086
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9428
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1911020085
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, dri-devel <dri-devel@lists.freedesktop.org>
Subject: Re: [Linaro-mm-sig] [bug report] dma-buf: heaps: Add heap helpers
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

T24gRnJpLCBOb3YgMDEsIDIwMTkgYXQgMTI6MzE6NTNQTSAtMDcwMCwgSm9obiBTdHVsdHogd3Jv
dGU6Cj4gT24gVGh1LCBPY3QgMzEsIDIwMTkgYXQgNDowNyBBTSBEYW4gQ2FycGVudGVyIDxkYW4u
Y2FycGVudGVyQG9yYWNsZS5jb20+IHdyb3RlOgo+ID4gVGhlIHBhdGNoIDdiODdlYTcwNGZkOTog
ImRtYS1idWY6IGhlYXBzOiBBZGQgaGVhcCBoZWxwZXJzIiBmcm9tIE9jdAo+ID4gMjEsIDIwMTks
IGxlYWRzIHRvIHRoZSBmb2xsb3dpbmcgc3RhdGljIGNoZWNrZXIgd2FybmluZzoKPiA+Cj4gPiAg
ICAgICAgIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9oZWFwLWhlbHBlcnMuYzoxNjUgZG1hX2hlYXBf
dm1fZmF1bHQoKQo+ID4gICAgICAgICB3YXJuOiB1bmNhcHBlZCB1c2VyIGluZGV4ICdidWZmZXIt
PnBhZ2VzW3ZtZi0+cGdvZmZdJwo+ID4KPiA+IGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9oZWFwLWhl
bHBlcnMuYwo+ID4gICAgMTYwICBzdGF0aWMgdm1fZmF1bHRfdCBkbWFfaGVhcF92bV9mYXVsdChz
dHJ1Y3Qgdm1fZmF1bHQgKnZtZikKPiA+ICAgIDE2MSAgewo+ID4gICAgMTYyICAgICAgICAgIHN0
cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hID0gdm1mLT52bWE7Cj4gPiAgICAxNjMgICAgICAgICAg
c3RydWN0IGhlYXBfaGVscGVyX2J1ZmZlciAqYnVmZmVyID0gdm1hLT52bV9wcml2YXRlX2RhdGE7
Cj4gPiAgICAxNjQKPiA+ICAgIDE2NSAgICAgICAgICB2bWYtPnBhZ2UgPSBidWZmZXItPnBhZ2Vz
W3ZtZi0+cGdvZmZdOwo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgXl5eXl5eXl5eXgo+ID4gU21hdGNoIGZvciBzb21lIHJlYXNvbiB0aGlua3MgdGhpcyBuZWVk
cyB0byBiZSBjaGVja2VkLiAgU21hdGNoIGFsc28KPiA+IGdldHMgY29uZnVzZWQgYnkgdGhlc2Ug
ZmF1bHQgaGFuZGxlcnMgYW5kIHRoaW5rcyB0aGVyZSBpcyBzb21lIHJlY3Vyc2lvbgo+ID4gaW52
b2x2ZWQuLi4KPiAKPiBIcm0sIEknbSBub3QgdG90YWxseSBzdXJlIEkgZ3JvayB3aGF0IGl0J3Mg
bG9va2luZyBmb3IsIGJ1dCBJJ20KPiBndWVzc2luZyBpdCdzIHN1Z2dlc3Rpbmcgd2UgY2hlY2sg
dGhhdCBwZ29mZiBpc24ndCBsYXJnZXIgdGhlbiB0aGUKPiBwYWdlY291bnQ/Cj4gSSdsbCBhZGQg
dGhhdCBjaGVjayBpbiwgYnV0IGxldCBtZSBrbm93IGlmIEkndmUgbWlzdW5kZXJzdG9vZC4KClll
YWgsIHRoYXQncyByaWdodC4gIE9yIG1heWJlIHBnb2ZmIGlzIGNoZWNrZWQgc29tZXdoZXJlIGVs
c2U/CgpyZWdhcmRzLApkYW4gY2FycGVudGVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=
