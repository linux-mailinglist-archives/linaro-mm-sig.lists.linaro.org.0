Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kAp8GxEg4WmipQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:44:49 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B044132BE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:44:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 110AD45E6D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:44:48 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 9B24D3F751
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Mar 2026 04:22:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b="c/Z5n66U";
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=fzhtwM64;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6244IZF4960206
	for <linaro-mm-sig@lists.linaro.org>; Wed, 4 Mar 2026 04:22:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tlbeDGjUP0JSGoux2wklhzIf
	NMznEwVoyK8emBv6LqI=; b=c/Z5n66UUeyIGhW6V3AS80qPffCne7OeN24B8uqj
	dnBn9Vc/Kq1CVFKJFUDn9HSKvsrJUA+EOnZV179NYpUMjZECKSE8wvJzsJKVB7XH
	K4EPD3iBaCNSxGR9t/QtdYgR7U/L9GtcpsonFi0FGsWk9PYuirNMLIQXIM5Y2gv4
	PKJjYeF58AYRdVqSOSu5nbb2syGAGqCyLhceytWPICAby7BPXIN4ujlNNd994q4k
	4Iai0zouxtO767KHYoRxXctKM1sAoOyoKg8n7filX7iHVT3tKkCRTGFX72Eva6ka
	m5n++swUkhl0cSLxAYG6RIDoiNNZmkJ2PYJvof08wJHT9w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnsjm4b9m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 04 Mar 2026 04:22:13 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb4d191ef1so809827185a.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 03 Mar 2026 20:22:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772598132; x=1773202932; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tlbeDGjUP0JSGoux2wklhzIfNMznEwVoyK8emBv6LqI=;
        b=fzhtwM64yc3/tt7xpVNGZ46V+m1U+HDWNVTpujF4PCOCu4NyGmjL1R5f8cAUlT6D7N
         evFON0DhWbvbELfxADuyuqORuYQUzlcaRrUd6Nvh2aQG7xDJPnrY0Uyno9C8m+DEfeC0
         vINfXWnPigraYGPa5DmpD2UBRfZd6u24NuwykEY3Joc5FMeUQahv4TEK6yHCZdhignuB
         zl6LyXlbs9FZ8JsgAIFot/5x45ITSrko7oY3Q9bLQWPd+uqxptb+1I3Zycn6vRIE2ouI
         4iw3T0uAd42HPqXjTajXG47D7micOOJ4p10G9w/BU4LNgfw2bSKAvUetmk1P+ZiNP/bD
         4mrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772598132; x=1773202932;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tlbeDGjUP0JSGoux2wklhzIfNMznEwVoyK8emBv6LqI=;
        b=lPV81xGFTcnG4f0rfWNchNdo/Rdxm57V5aJ2t7oGppXjqTF8mkkX+AZUzYwlqC11eX
         v9X7OXY+HiuDvwPViGTn6nY/AB6e8pQf6mqyjDbtuYxTV+i+mViUHxMhSW583mBJCdK0
         hyfpuvSCDs1Ky6uVs8u+Tx9I0EPLETMOUddjTAAw0FRsKINw0qEsOyGReSx3j+Hq4BZW
         6bYOVbaikVAQf01qtXrc44qbWyJPsGUeBybVrbUeNDD1XL6W8sY5ip5vsx/biDj33hVx
         OaHMyb+O7ci9EqPmuXtHZJkKTLVypkzEW18v7sGuo5/MLr+i3vvICwNIYfLlnDtXRfsk
         zZPA==
X-Forwarded-Encrypted: i=1; AJvYcCV6v5NS6z6w78greeVtqFlfgacEbNuoowkT2FflNAE22OBjjerhn3AHyBlmWzYasJlHs6FQq6+Yx3YF9GYk@lists.linaro.org
X-Gm-Message-State: AOJu0YwySq0QU65E79/9T1wkB4+kysgQDzHx7Tr1G1D0Jw8GKyFLdgGz
	HM3cNgloDkDkmA2qiauSr5BfcofwdMS8Edp4+jzoLCSIySyM6TXceiLpyx7SSBC4DFLRccSP+h8
	hYVV4rB+Fuo704nWmcZJ9/v0HnYAA89YWneK6/cCbm6W2ANm2VhqZOEapgwORp/5RQyl9cA==
X-Gm-Gg: ATEYQzzS73sO5ZVjaVrcbC0oWY6Ty6IXPZJeDHsgAFHsxftU5hJc5DYY84oyMysgan2
	3fnH7Yyk33mALp//NCS5jnKS69iZE0SZCNN4QzvPu7BDBKKTKbiQDwmvDWOPDqPaAArcTzKAkKY
	/jwv8UV0yjVKsC7tz4dynYnsoVBX+GHsM4hBrQq/pMMbHWSWBqB+IbSfXLRN5MMQi74UouqXPPP
	0ZLVzdJV6I4xVUFtyg4g17wMOeMMQlpF7XyNBse3CkE+BPbXbJZDfGxKM59Hx0aDZMgxhOk875f
	CoBMmzrAGvZRuPLvQaL+hCimhGTR8esLRIowGPFYrSmSFFNtOngUdDvHgQPMeCwfouzlbmnSxWX
	OOJPZPzTaJq3GS6vgvoUCd5OUypg0PdYtbd2JpOPcq7nGiNKXgmJUpEEXFbuZvLj1oPo5ToMzFy
	1rNPNJz2zvVL1cdhCYWfhEblsqRzagVnTlvJ8=
X-Received: by 2002:a05:620a:4609:b0:8c9:fc46:235c with SMTP id af79cd13be357-8cd5afc1082mr91775385a.71.1772598132170;
        Tue, 03 Mar 2026 20:22:12 -0800 (PST)
X-Received: by 2002:a05:620a:4609:b0:8c9:fc46:235c with SMTP id af79cd13be357-8cd5afc1082mr91772185a.71.1772598131614;
        Tue, 03 Mar 2026 20:22:11 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a12a6e4c0csm227636e87.2.2026.03.03.20.22.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 20:22:10 -0800 (PST)
Date: Wed, 4 Mar 2026 06:22:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Message-ID: <wubjsfz2ijtqvwwqc6y2bawinpdwvvke6vh4owytcxjdmbfjji@ybmz23zic5dn>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-6-fe46a9c1a046@oss.qualcomm.com>
 <d7s4e7xzfqfbcf5o3grc6xqm74dzwpck6ge7hyrwewmyacpuez@lcd6nhzyjr55>
 <5448e807-2435-42f4-b98e-2beb6b66a6f4@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5448e807-2435-42f4-b98e-2beb6b66a6f4@oss.qualcomm.com>
X-Proofpoint-GUID: 8ltSSJ7UWOXjlHKkS2dZZkXaxf410Zak
X-Authority-Analysis: v=2.4 cv=GIUF0+NK c=1 sm=1 tr=0 ts=69a7b375 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=LbhuFg2odiTRP-zraWgA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: 8ltSSJ7UWOXjlHKkS2dZZkXaxf410Zak
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDAzMyBTYWx0ZWRfX34SVplRRul1v
 DZ4MsYHU472m6sbbYGEsFClyZO54tK/Mvsethvm4X0Klcu7P4ZOiM2to2mvxkWLjcIwZ2R6AZQV
 FRir/RXOS3NOjeSrKHMT2lxWYX976IJrQm3MbPhFsxsvxHbWQnn09v3W/+fWbJ5LcTyj2gqHofk
 Is/o7Lf+3EFcDrJWjEHQ7N0TAzfyhSUpAs3obM/A1Elcb5nFRa6C+3FjYh25WE8cWQT+9YS47nm
 QfuqwPrLqfbLLnLQyPKV2n7zODH6LH7zHikvZyr+iv4AGOjitVkkDYbHQdCeC1GH0lOraxv3vdx
 vB7ddpX1/FQoICZKBqyDuMVXw3ZbmFI3404B1MRf8rPDsrSZuLFRtp+HNDlfjz5rfbxBstdPnJH
 Sx3tW0S/NMHkt5qifxtt/Yi/YSX7MZKyaDdDMGdQJbVB3/YaTQkx70BwosWUGwYn2uSF98iDFIX
 nkklgNrGWOzxm3TAG0A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_02,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 suspectscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040033
X-Spamd-Bar: ---
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KN4UIX3S4PKZ52NS3M54RH3G2VBKFXXD
X-Message-ID-Hash: KN4UIX3S4PKZ52NS3M54RH3G2VBKFXXD
X-Mailman-Approved-At: Thu, 16 Apr 2026 17:00:31 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 06/18] accel/qda: Add memory manager for CB devices
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KN4UIX3S4PKZ52NS3M54RH3G2VBKFXXD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	DATE_IN_PAST(1.00)[1045];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.linaro.org,oss.qualcomm.com,quicinc.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,qualcomm.com:email]
X-Rspamd-Queue-Id: F1B044132BE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 02, 2026 at 01:45:09PM +0530, Ekansh Gupta wrote:
> 
> 
> On 2/24/2026 4:20 AM, Dmitry Baryshkov wrote:
> > On Tue, Feb 24, 2026 at 12:39:00AM +0530, Ekansh Gupta wrote:
> >> Introduce a per-device memory manager for the QDA driver that tracks
> >> IOMMU-capable compute context-bank (CB) devices. Each CB device is
> >> represented by a qda_iommu_device and registered with a central
> >> qda_memory_manager instance owned by qda_dev.
> >>
> >> The memory manager maintains an xarray of devices and assigns a
> >> unique ID to each CB. It also provides basic lifetime management
> > Sounds like IDR.
> I was planning to stick with xarray accross QDA as IDR gives checkpatch warnings.

Ack.

> >
> >> and a workqueue for deferred device removal. qda_cb_setup_device()
> > What is deferred device removal? Why do you need it?
> This is not needed, I was trying some experiment in my initial design(CB aggregation),
> but it's not needed now, I'll remove this.

Ack

> >
> >> now allocates a qda_iommu_device for each CB and registers it with
> >> the memory manager after DMA configuration succeeds.
> >>
> >> qda_init_device() is extended to allocate and initialize the memory
> >> manager, while qda_deinit_device() will tear it down in later
> >> patches. This prepares the QDA driver for fine-grained memory and
> >> IOMMU domain management tied to individual CB devices.
> >>
> >> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> >> ---
> >>  drivers/accel/qda/Makefile             |   1 +
> >>  drivers/accel/qda/qda_cb.c             |  32 +++++++
> >>  drivers/accel/qda/qda_drv.c            |  46 ++++++++++
> >>  drivers/accel/qda/qda_drv.h            |   3 +
> >>  drivers/accel/qda/qda_memory_manager.c | 152 +++++++++++++++++++++++++++++++++
> >>  drivers/accel/qda/qda_memory_manager.h | 101 ++++++++++++++++++++++
> >>  6 files changed, 335 insertions(+)
> >>
> 

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
