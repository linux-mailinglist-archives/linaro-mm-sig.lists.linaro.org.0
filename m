Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5DC14F6CD
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  1 Feb 2020 06:57:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E5CB6618F6
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  1 Feb 2020 05:57:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D843B61961; Sat,  1 Feb 2020 05:57:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_PASS,SUBJ_OBFU_PUNCT_FEW,
	SUBJ_OBFU_PUNCT_MANY,UNPARSEABLE_RELAY autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3EF0D6193D;
	Sat,  1 Feb 2020 05:57:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E4A166185D
 for <linaro-mm-sig@lists.linaro.org>; Sat,  1 Feb 2020 05:57:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CE95B6193D; Sat,  1 Feb 2020 05:57:06 +0000 (UTC)
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by lists.linaro.org (Postfix) with ESMTPS id CDD8F6185D
 for <linaro-mm-sig@lists.linaro.org>; Sat,  1 Feb 2020 05:57:04 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0115rnjn154505;
 Sat, 1 Feb 2020 05:56:37 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2xw1yqr7y1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 01 Feb 2020 05:56:37 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0115mTNl109936;
 Sat, 1 Feb 2020 05:56:36 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2xw15wm6kt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 01 Feb 2020 05:56:36 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0115uR75028315;
 Sat, 1 Feb 2020 05:56:27 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 31 Jan 2020 21:56:26 -0800
Date: Sat, 1 Feb 2020 08:56:12 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: syzbot <syzbot+0dc4444774d419e916c8@syzkaller.appspotmail.com>
Message-ID: <20200201055612.GF1778@kadam>
References: <000000000000ae2f81059d7716b8@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000000000000ae2f81059d7716b8@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9517
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2002010040
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9517
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2002010041
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: robdclark@chromium.org, davem@davemloft.net, airlied@linux.ie,
 netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, eric@anholt.net, seanpaul@chromium.org,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch, alexander.deucher@amd.com,
 linux-media@vger.kernel.org, christian.koenig@amd.com,
 emil.velikov@collabora.com
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

SSBkb24ndCB0b3RhbGx5IHVuZGVyc3RhbmQgdGhlIHN0YWNrIHRyYWNlIGJ1dCBJIGRvIHNlZSBh
IGRvdWJsZSBmcmVlCmJ1Zy4KCmRyaXZlcnMvZ3B1L2RybS92Z2VtL3ZnZW1fZHJ2LmMKICAgMTg2
ICBzdGF0aWMgc3RydWN0IGRybV9nZW1fb2JqZWN0ICp2Z2VtX2dlbV9jcmVhdGUoc3RydWN0IGRy
bV9kZXZpY2UgKmRldiwKICAgMTg3ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgc3RydWN0IGRybV9maWxlICpmaWxlLAogICAxODggICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgKmhhbmRsZSwKICAg
MTg5ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWdu
ZWQgbG9uZyBzaXplKQogICAxOTAgIHsKICAgMTkxICAgICAgICAgIHN0cnVjdCBkcm1fdmdlbV9n
ZW1fb2JqZWN0ICpvYmo7CiAgIDE5MiAgICAgICAgICBpbnQgcmV0OwogICAxOTMgIAogICAxOTQg
ICAgICAgICAgb2JqID0gX192Z2VtX2dlbV9jcmVhdGUoZGV2LCBzaXplKTsKCm9iai0+YmFzZS5o
YW5kbGVfY291bnQgaXMgemVyby4KCiAgIDE5NSAgICAgICAgICBpZiAoSVNfRVJSKG9iaikpCiAg
IDE5NiAgICAgICAgICAgICAgICAgIHJldHVybiBFUlJfQ0FTVChvYmopOwogICAxOTcgIAogICAx
OTggICAgICAgICAgcmV0ID0gZHJtX2dlbV9oYW5kbGVfY3JlYXRlKGZpbGUsICZvYmotPmJhc2Us
IGhhbmRsZSk7CgpXZSBidW1wIGl0ICsxIGFuZCB0aGVuIHRoZSBlcnJvciBoYW5kbGluZyBjYWxs
cwpkcm1fZ2VtX29iamVjdF9oYW5kbGVfcHV0X3VubG9ja2VkKG9iaik7CndoaWNoIGNhbGxzIGRy
bV9nZW1fb2JqZWN0X3B1dF91bmxvY2tlZCgpOyB3aGljaCBmcmVlcyBvYmouCgoKICAgMTk5ICAg
ICAgICAgIGRybV9nZW1fb2JqZWN0X3B1dF91bmxvY2tlZCgmb2JqLT5iYXNlKTsKClNvIHRoaXMg
aXMgYSBkb3VibGUgZnJlZS4gIENvdWxkIHNvbWVvbmUgY2hlY2sgbXkgdGhpbmtpbmcgYW5kIHNl
bmQKYSBwYXRjaD8gIEl0J3MganVzdCBhIG9uZSBsaW5lci4gIE90aGVyd2lzZSBJIGNhbiBzZW5k
IGl0IG9uIE1vbmRheS4KCiAgIDIwMCAgICAgICAgICBpZiAocmV0KQogICAyMDEgICAgICAgICAg
ICAgICAgICByZXR1cm4gRVJSX1BUUihyZXQpOwogICAyMDIgIAogICAyMDMgICAgICAgICAgcmV0
dXJuICZvYmotPmJhc2U7CiAgIDIwNCAgfQoKcmVnYXJkcywKZGFuIGNhcnBlbnRlcgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
