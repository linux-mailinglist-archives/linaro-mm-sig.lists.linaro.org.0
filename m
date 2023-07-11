Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBDC74F567
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Jul 2023 18:33:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 869223F989
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Jul 2023 16:33:03 +0000 (UTC)
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
	by lists.linaro.org (Postfix) with ESMTPS id CEBBA3ED2A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Jul 2023 16:32:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=oracle.com header.s=corp-2023-03-30 header.b=ymbOEdbz;
	spf=pass (lists.linaro.org: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
	dmarc=pass (policy=none) header.from=oracle.com
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 36BG3O1f022902;
	Tue, 11 Jul 2023 16:32:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type : content-transfer-encoding; s=corp-2023-03-30;
 bh=+4V1nFRqwTelDtAcI310e7e7t3xc9C8kzlyU277DNxs=;
 b=ymbOEdbzGq63lkQ0RO+iBGkUQEcS4UO/lxjF5K2PqFLto+ysV4TEsKigi8pkSD+0XbV3
 XL1VOnexhj0u4/lo6XBn/xKbWSCP26vhMmRAizm8IRK0RiyBmzMxWVgii4+mt2saQDoe
 WQkfBM6MOBixvv4+SnNsom8ajpTprr/jzywgI6bM0UJ9nti/578BpsbF+a3T3kS3400U
 qjrAwqeuyDNTIGrKLmM9yjvATi3gM7M2TcV35rsN6hK23qmhlVJ+Q2GA+3HbmZr/Ok6j
 74UXMpMsv5v2yolmJdhg0gscYbkGqAGt8XqOJSHUbr49tqGPzkT/fCW47BE+ftkelpr9 sA==
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3rpyud5e6f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 11 Jul 2023 16:32:04 +0000
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 36BGUtBm007087;
	Tue, 11 Jul 2023 16:32:03 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3rpx854cdv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 11 Jul 2023 16:32:03 +0000
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 36BGQBXP019529;
	Tue, 11 Jul 2023 16:32:02 GMT
Received: from ca-mkp2.ca.oracle.com.com (mpeterse-ol9.allregionaliads.osdevelopmeniad.oraclevcn.com [100.100.251.135])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id 3rpx854c4h-4;
	Tue, 11 Jul 2023 16:32:02 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: linux-hyperv@vger.kernel.org, Julia Lawall <Julia.Lawall@inria.fr>
Date: Tue, 11 Jul 2023 12:31:45 -0400
Message-Id: <168909306205.1197987.4062725942946508296.b4-ty@oracle.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230627144339.144478-1-Julia.Lawall@inria.fr>
References: <20230627144339.144478-1-Julia.Lawall@inria.fr>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-11_08,2023-07-11_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 mlxlogscore=801
 adultscore=0 mlxscore=0 spamscore=0 phishscore=0 malwarescore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2307110148
X-Proofpoint-ORIG-GUID: VdiqWRAD5JOoA45uglvHtoSxe29wDWJY
X-Proofpoint-GUID: VdiqWRAD5JOoA45uglvHtoSxe29wDWJY
X-Spamd-Result: default: False [-7.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_IN_DNSWL_HI(-1.00)[100.100.251.135:received,205.220.177.32:from];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[oracle.com,none];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[205.220.177.32:from];
	RCVD_IN_DNSWL_MED(-0.20)[147.154.114.232:received];
	R_DKIM_ALLOW(-0.20)[oracle.com:s=corp-2023-03-30];
	R_SPF_ALLOW(-0.20)[+ip4:205.220.177.32];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:22843, ipnet:205.220.177.0/24, country:US];
	FREEMAIL_CC(0.00)[oracle.com,vger.kernel.org,chromium.org,wanadoo.fr,kernel.org,googlegroups.com,gmail.com,google.com,lists.linux.dev,arm.com,nvidia.com,lists.linux-foundation.org,linux.alibaba.com,lists.linaro.org,redhat.com,codeaurora.org,collabora.com,lists.freedesktop.org,linux.intel.com,zytor.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[oracle.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_TWELVE(0.00)[37];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CEBBA3ED2A
X-Spamd-Bar: -------
Message-ID-Hash: RKMBSSTWFHDIG67GC6MW4D3FABACDL3M
X-Message-ID-Hash: RKMBSSTWFHDIG67GC6MW4D3FABACDL3M
X-MailFrom: martin.petersen@oracle.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Martin K . Petersen" <martin.petersen@oracle.com>, kernel-janitors@vger.kernel.org, keescook@chromium.org, christophe.jaillet@wanadoo.fr, kuba@kernel.org, kasan-dev@googlegroups.com, Andrey Konovalov <andreyknvl@gmail.com>, Dmitry Vyukov <dvyukov@google.com>, iommu@lists.linux.dev, linux-tegra@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, virtualization@lists.linux-foundation.org, Xuan Zhuo <xuanzhuo@linux.alibaba.com>, linux-scsi@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, John Stultz <jstultz@google.com>, Brian Starkey <Brian.Starkey@arm.com>, Laura Abbott <labbott@redhat.com>, Liam Mark <lmark@codeaurora.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, Shailend Chand <shailend@google.com>, linux-rdma@vger.kernel.org, mhi@lists.linux.dev, linux-arm-msm@vger.kernel.org, linux-btrfs@vger.kernel.org, intel-gvt-dev@lists.freedesktop.org, intel-
 gfx@lists.freedesktop.org, Dave Hansen <dave.hansen@linux.intel.com>, "H. Peter Anvin" <hpa@zytor.com>, linux-sgx@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH v2 00/24] use vmalloc_array and vcalloc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RKMBSSTWFHDIG67GC6MW4D3FABACDL3M/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 27 Jun 2023 16:43:15 +0200, Julia Lawall wrote:

> The functions vmalloc_array and vcalloc were introduced in
> 
> commit a8749a35c399 ("mm: vmalloc: introduce array allocation functions")
> 
> but are not used much yet.  This series introduces uses of
> these functions, to protect against multiplication overflows.
> 
> [...]

Applied to 6.5/scsi-fixes, thanks!

[07/24] scsi: fnic: use vmalloc_array and vcalloc
        https://git.kernel.org/mkp/scsi/c/b34c7dcaf311
[24/24] scsi: qla2xxx: use vmalloc_array and vcalloc
        https://git.kernel.org/mkp/scsi/c/04d91b783acf

-- 
Martin K. Petersen	Oracle Linux Engineering
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
