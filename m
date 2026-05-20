Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDd1KhfDDWr32wUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 16:20:07 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F14958F782
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 16:20:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CE26E40995
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 14:20:05 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id B9C4640971
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:19:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=UgWvSvcc;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=Onxfei37;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64K9oWaE1178224
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:19:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6tCnNFj4WCxpcwrHOfsYOWMW
	qwLTQRnnuiD3kfu4AiI=; b=UgWvSvccqLfXw468Tkb1E8z6KQ+1FXfgivcyie7X
	7mRZ4oCLQU1RX9AnUfRXMQrsZMMMiDgAVw1X6NOgmCry+U0AELq6l19HEamwzETn
	3gg5F6tydxeCV6hvpsj/COwqFRUSJoCNzxQgEaaPqYVTCLq71D0ajGtpX+OeeqOq
	HhG74oxpccO/ary6rB+UwoAHJ1Pv9dIY4ZuX+tp8HMgDtY3Uw6TQ0jS5nB2TzzkG
	CKUC9UbymTzuzqxqNWBHg38Fqm4K0lK+Im7H2LDH7Kr2h8eGe17dYPmROTcR/1AI
	lE7cFSgZTKqxEMB5bh3X9ggyJsBA9U7rpLT+t2G5L3890g==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9ap6rxwn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:19:54 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-57563cc7576so4105097e0c.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 07:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779286793; x=1779891593; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6tCnNFj4WCxpcwrHOfsYOWMWqwLTQRnnuiD3kfu4AiI=;
        b=Onxfei37AlFpO1WtvfCzCmj3eP+8L5FZOICoOs+ScLV/BDkfnI3yhAkzvzSBgKOUuO
         +MaQ9lN6rKlXyT0kFZXtIfPJv04VVeN5N3JLGLV6bceh/PnmT3YSJE/oxOdfIvUKqOxe
         L/nqBe/4bEz9BK7mZd6vCg3QtEXNBjzAhvAAitmUuLeThmvA4Ka/r9dwG1dj3Zk2kETr
         3h4816aU/XQ0s+qbr1+w9klW411pE5HmlH6oCX33Yi50J5PRJn08TXrfz0x3h/wq68g2
         slStl53r2V1hF1riVCMcYBzTvzJanALt4s9PtmLl1+OCqVmZXFL2BD7CGHXL4te/JAh+
         DoTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779286793; x=1779891593;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6tCnNFj4WCxpcwrHOfsYOWMWqwLTQRnnuiD3kfu4AiI=;
        b=AXXmnoZbu1kstIft3qTXAGfaGcbg/1g3fp3eRKWclPLje6h55T5x+ZzI9PK7dssS7q
         y5c+McAfUfwPM2FOnBBR8yewjays4JHkYc07WUj+K7o89u5kauFA+ESHy4omGN42mRiV
         r9xROekhfJL3aSkqQg84pOTT1haIt6isFxNtNwzg3kgCQSoqDM6HsdoRE/cm/Hn02xBH
         h96OckLnRQ77BONOqajoe3uNHnxspahUkNwSVGE1RjjsS1FHqwei1OKmQvI2NZ5nTYIf
         CMMPLPmIrCiM+yAuYWzKmxpPKXludz3xN9K0u37/lm9f40Qkm0lvHPl2kxysIkfWAH1U
         X/Rg==
X-Forwarded-Encrypted: i=1; AFNElJ8y7Plj01ExjJRLSwMeDbjP0EvfeuuZTV+hi53j2fnl+p/bTum8Q3NpKTkv5tSNS7P93NDdfs6lM//xm00X@lists.linaro.org
X-Gm-Message-State: AOJu0YxrDCOdR3acVLucqinT+B7oWL/0pnrvnAid9sMJXvEiCMS2VXcn
	WK3ZM5XSmdCBoobVw7P4vg7WAJhdvsd7B5oC8gQSALZROVQoMrm76qHkTWSNJzgEw3F+XaZo/tB
	k5DDnF8Eoki/crSifrV3Js+PGBwxp1f4vnM14US10BoSp4tk77XauY3s/4j0LiLeKFL1qhw==
X-Gm-Gg: Acq92OHOH70huKq5e5RvFL5ne9bERSjG2QsVw+7AQ587auO25Oqvd4xKZuDzJUEwA5V
	MIdI0hD8ZZrIdn+MkZkP2webHFAjERpxzNEtexhc2I9J7aI0Od2JT4adwzFpFZMbpmVekpnvEjp
	pTrfpjSamh46R/6WwjruOgD10sCkMIg5RXQ9Oa5+YVuy2MUSoVU8xwkdYwCHiWCSMT8bxBZchZP
	owgc9HtMPI38WN2NVgbBsRhmKtyeq431V2DdkNXpuMaEVIFrUGAtG4lZ1mPnv2iAA+t1VLhfh6b
	gR4dq3Sw+xztfEIkePuqn/K1UVOhW56ude7mcJoViE7b9XJ9eu0US+1SoKl8lRaCnlOXziaQUHi
	b3ydNJGzFO9Kdh4w93r9cZn0QtFEumG8yG7iNe8uZogA+ztvopOJv+Jsf+sJuabg5OKWQ+m1/DG
	JY73Fkn1Eo17sZkSIV0FiQqs5Lc5qZNnYPZUA=
X-Received: by 2002:a05:6122:828e:b0:577:559a:3ef8 with SMTP id 71dfb90a1353d-577559a4a34mr8499330e0c.11.1779286793216;
        Wed, 20 May 2026 07:19:53 -0700 (PDT)
X-Received: by 2002:a05:6122:828e:b0:577:559a:3ef8 with SMTP id 71dfb90a1353d-577559a4a34mr8499265e0c.11.1779286792601;
        Wed, 20 May 2026 07:19:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a9164bc12asm4981844e87.42.2026.05.20.07.19.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 07:19:51 -0700 (PDT)
Date: Wed, 20 May 2026 17:19:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: ekansh.gupta@oss.qualcomm.com
Message-ID: <hhqbykyitoqjyekwn3tdv6ytzzg7hv27tqj5h26frxxoe2j3do@zzng2lmpfz2i>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-5-b2d984c297f8@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260519-qda-series-v1-5-b2d984c297f8@oss.qualcomm.com>
X-Proofpoint-GUID: TZsS22uV8FADXotHXz0OuXv3NOR0vH19
X-Proofpoint-ORIG-GUID: TZsS22uV8FADXotHXz0OuXv3NOR0vH19
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIwMDEzOSBTYWx0ZWRfX04QV8+bNnYps
 N1RRfczxlI4whQSuF59kmOLolKXOwrBeqF6T7MexReQX5HoFgGgh+CGXOsQZL5ch80+alJdZhGJ
 SQrOlt/Hx5uyc26uAneac2ZRFLONUxvbhyGwQr81gxw16j4UHnyF2mU4e/ebq39cXomF0R4OUOO
 tB3cBE4mfNzyrzB999UgDzWm1Y/wEXuFIHrGA6RboRKQqwEZSeJfpHLL7ET58pSj/gCMaoCtYUy
 FRtv2hdqGQwomONreNpF+KJp5ywhJGWSyZs9+e5svWqacTC4mi2hp2v6kKg7WcclfF0rqWKE7bu
 K/7pOO8UiR5VFQwYjh3+/DaLgwK7ZUTUEkfPVCoPq5s9iJLmGyazFyyRWsUCvYAv7X+W788VcP1
 sprQLtXP1T8WRPf9nwYObwX8Orga/u/K9vFrg6Zn0NuTwrxm4eb1/z9KK/P8OIDcMXOKi11V0Qf
 LHbkTGRfsNGQ9i+Rg/g==
X-Authority-Analysis: v=2.4 cv=FesHAp+6 c=1 sm=1 tr=0 ts=6a0dc30a cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=lBWuVeWgvPZisQjhOOYA:9 a=CjuIK1q_8ugA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605200139
X-Spamd-Bar: ---
Message-ID-Hash: 5E7MN7NTT5LB7ULQY2XZY7266ZSGAJ6L
X-Message-ID-Hash: 5E7MN7NTT5LB7ULQY2XZY7266ZSGAJ6L
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 05/15] iommu: Add QDA compute context bank bus to iommu_buses
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5E7MN7NTT5LB7ULQY2XZY7266ZSGAJ6L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,quicinc.com,oss.qualcomm.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:-,oss.qualcomm.com:-];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.026];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,qualcomm.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 5F14958F782
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 19, 2026 at 11:45:55AM +0530, Ekansh Gupta via B4 Relay wrote:
> From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> 
> Register the QDA compute context bank bus (qda-compute-cb) with the
> IOMMU subsystem by adding it to the iommu_buses[] array.
> 
> The QDA driver creates synthetic devices on this bus to represent
> IOMMU context banks (CBs). Each CB device needs its own IOMMU domain
> so that the DSP memory manager can enforce per-session address space
> isolation. Without this registration, the IOMMU subsystem does not
> probe CB devices for IOMMU groups and of_dma_configure() in the bus
> dma_configure callback has no IOMMU domain to attach to.
> 
> Assisted-by: Claude:claude-4-6-sonnet
> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> ---
>  drivers/iommu/iommu.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
