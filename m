Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wKnwGg9JKWqBTgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:22:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0C1668B6C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:22:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=gwfdrQC8;
	dkim=fail ("body hash did not verify") header.d=oss.qualcomm.com header.s=google header.b="Owh5iON/";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 34F6A40A99
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:22:54 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 0ECE2409EA
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jun 2026 13:26:43 +0000 (UTC)
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 653CTZGD1200016
	for <linaro-mm-sig@lists.linaro.org>; Wed, 3 Jun 2026 13:26:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FBhsg7FwzuMrC2Y5faSGRrZu
	R8DY6M4ytXCJ9V4SUKo=; b=gwfdrQC8QGxcPEM1JdkngF2f7SVaf4tWQ4Ar3/Z2
	6Ayhs4s0EPnkY365ytZbRhJr5pZ2Ia0SCCTCAjv8Dbl8NTmB4HeesLWg5ze+/sWx
	TbJcRPE3fn3biZkvNM1w3nSUGg1ZJKlJVM1FYegh6rsP/G/2hwrATp873oFuKgfj
	RvZupct1n2aWYUOfGIbS+nTL/f9ub4gaaiJm67n2bX/LW77XFx5QZNmy1ZIFRr71
	uH5X6GoBc3xC/fiJxNk3Hi9qxlRKkJtAjnpLvT/a0udBzmyrHG9DmQLaQSP/yiJF
	3et4YpPyFT+THy+MgCOz4wiuWpJyvsI6UXbRlDQhUCOuDQ==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejckw26r7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jun 2026 13:26:42 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-59bd734ecbcso2501393e0c.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jun 2026 06:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780493202; x=1781098002; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FBhsg7FwzuMrC2Y5faSGRrZuR8DY6M4ytXCJ9V4SUKo=;
        b=Owh5iON/bHvcJxZqq27k3kXs2f4oIzf7YNHpvahvag2Ph935pD0do8umcdfaXkD3IG
         4xEn1T/edExsMLA/ubhGvU6aqQroFSWQxF+XPwYZ0MGZNT+Pz/7TfEKtjfYmrqapwq8M
         YY6O4NzFyUPhXOOFE1awqJyaxD+dG3dxinvlydvmqy1FNr/KWgdaL5NaIzaZG6xb5glz
         XakAJYq/SAgNGgbChIELE714rXwr78/j4y8mzz0s867hQNLD9oqGYaHi/bpD/hy23Il9
         Wbns15aieS1f9no0s/+aMaVegRh25myDS/ze8vYLULOe9A6J/f61DvNOSTViM0k+oi8b
         eQxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780493202; x=1781098002;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FBhsg7FwzuMrC2Y5faSGRrZuR8DY6M4ytXCJ9V4SUKo=;
        b=p5jHJAFNwr+tnM2Iue3U3szwTPmJbDuBV4R3gJ5AvuRwIWeekos3Ym7Nw9JlTa4QC9
         ztnu28vPsXC/cQvLFG12yvFqsbrOUjRQBxkc4WH9MhhUIeGiQpwyffRhycMdrOmcXJ4l
         iifsZDPnmr6k++5BSeiDv6umzDtEKinM/5lalgzO/LJFbPmZXQapwCieCqC6ZbIvoTM8
         KhROGVSizUAyNJa/fUlkVYla53V7jOcQI7lOOcMbXpsaTMrupDzWdcH5gPte0YFjDIF/
         iHthkJJ8V4v3Re9cVlQTVjjfDivQYc+zSkS8MKKvVs26TmtRrDiZ0CJzEb5EBrBzYeBN
         7EDQ==
X-Forwarded-Encrypted: i=1; AFNElJ8XoHxd9CvY0NyY1jRorseziIDlfb1WvobBeR6VTufpzCfOvm0FKIsS4FEdO+Mxfr5TON5V8IkRnXSOr6nx@lists.linaro.org
X-Gm-Message-State: AOJu0Yxn16Yg5jJEutg41cym6FXBPlHXyjwbWTFiyP8/KSmFJH3jIzfH
	LQTzvjqwnXgzVODcWSqd2zSZC2FMmn9iV6XfXXo54yNWzSkqQmdKxr0PW7ijr4E4ddsZvFT9jAo
	Ce9qTo9B6sEKTv1r3nGfGB9ehg6Z4JkZMBQIVpzND6GWZQLa1GIur10PFft10hlEVmymTEw==
X-Gm-Gg: Acq92OG4/g+7fmSQ5HrMNdoh0g2oVlNyhP2D3dO4agWoWxfXMiuuEx4jOxQLGgbEYkr
	oCSRPoJWg8UCnMQHCnDW4MYFcUvabeCQ1mNIJOM2+01HsWz3NAzGfs/sdmZjgHs+63Pilnoqq4k
	4O6kpeylnTZrX82MqvbKosbpjvneYXRFb4rQHgHZsi1JD9Q+RyqvHpafhnIwE+YibpKixwH13g9
	gYo73zZuEmd+Oqr/c88dH7/TQulVguo1Fj4xqDL5F5N8O0FX35hNKlCBSApDCwZxXfQXJQib8K5
	v8TQ4HdAWn3LDLMIQYiUdCqjwHjzmnMQCwjfgaFLrEdgQpj8ghwIonOVvGyUYzfbBF9uWQ0UdBs
	S2ZQ1GIMMCve4BgGPkhHobLpBEJOHWFjyIsQ5qjuUykBtbTwlMcToN8ZjRDi/wxob1sQC4+P32J
	iPwZmmMmOxUzETqzE0KHnSDVK9tZziT4/teQ37n9HKoo+x+w==
X-Received: by 2002:a05:6122:1da9:b0:5a4:ac74:f5ba with SMTP id 71dfb90a1353d-5a6e86256ecmr1670773e0c.11.1780493201662;
        Wed, 03 Jun 2026 06:26:41 -0700 (PDT)
X-Received: by 2002:a05:6122:1da9:b0:5a4:ac74:f5ba with SMTP id 71dfb90a1353d-5a6e86256ecmr1670719e0c.11.1780493201199;
        Wed, 03 Jun 2026 06:26:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b97b04esm665779e87.40.2026.06.03.06.26.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 06:26:39 -0700 (PDT)
Date: Wed, 3 Jun 2026 16:26:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Message-ID: <4ok65ttxij2yn4qyvbizgobfxsfikqmsaynz5c6lfbp2d3o2kt@iuqdma64k4w5>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-6-b2d984c297f8@oss.qualcomm.com>
 <f527lflctqyqjrotd2qerlx4oikg6st6u2seqsjw6u5krkqrab@uhw33gnkp5c7>
 <37ae68ba-6639-4bd2-9483-5aa0156fd772@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <37ae68ba-6639-4bd2-9483-5aa0156fd772@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 2RuDJJWzmGA0yvXYcTo61DGddGL5pQKC
X-Authority-Analysis: v=2.4 cv=edUNubEH c=1 sm=1 tr=0 ts=6a202b92 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=niLhY7D_osK6bJDgftoA:9 a=CjuIK1q_8ugA:10 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDEyOSBTYWx0ZWRfX9y9Y4XuPQpMZ
 el+W+kqKEZBcejXAoAtKoKRHu4vxtp5w/8+a/Wf6vs3xMHhfhTOrS6FpZzeU1MTWYLuDHKD3T9J
 QmFhWVeF5pV9TG4JaEMF6lYxQlHS+XvEbGcWVbXSyc7SgzBk11i0NN+ekmwqpUcMiF3cqnBDwRu
 DpouymjsTxiDWuFgqm/rxrJN4gU+oQIjMqHO73Modco2TcZRPcSgfi4rPJqtli2fgYvK5sFnD/w
 aBFRlsbbxbd9O48M19Y3NAQohOjpC0hB/QSiuB75MBZCO7IjNXIiPm5qi/vT4qDnlyWPpSQaoc1
 zAXBkCpCs2K+7Ar9na1Oe2TkwFzNjA9pOjpQbYoUK/fOLiN7K0eVDEgfhcJR5LJSmS+ESr1EUco
 NvC2d7OidVJUTTVKhTOnkRM4h6JywK9fiKmn5iosLyot21qb1cpztPjxcv/rQJlK4b4/HZmPxym
 9MW1yaTNLWOZQgperaA==
X-Proofpoint-GUID: 2RuDJJWzmGA0yvXYcTo61DGddGL5pQKC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_04,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0 impostorscore=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606030129
X-Spamd-Bar: ---
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KPD4P5S4VV67A5MFF5FWOSG6VTISUZIR
X-Message-ID-Hash: KPD4P5S4VV67A5MFF5FWOSG6VTISUZIR
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:20:24 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 06/15] accel/qda: Create compute context bank devices on QDA compute bus
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KPD4P5S4VV67A5MFF5FWOSG6VTISUZIR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	DATE_IN_PAST(1.00)[165];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,quicinc.com,oss.qualcomm.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ekansh.gupta@oss.qualcomm.com,m:ogabbay@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:quic_bkumar@quicinc.com,m:quic_chennak@quicinc.com,m:srini@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robin.clark@oss.qualcomm.com,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:-,oss.qualcomm.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:from_mime,linaro.org:email,qualcomm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,iuqdma64k4w5:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1F0C1668B6C

On Wed, Jun 03, 2026 at 11:09:31AM +0530, Ekansh Gupta wrote:
> On 20-05-2026 19:53, Dmitry Baryshkov wrote:
> > On Tue, May 19, 2026 at 11:45:56AM +0530, Ekansh Gupta via B4 Relay wrote:
> >> From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> >>
> >> Introduce the CB (compute context bank) device management layer for the
> >> QDA driver. Each DSP domain node in the device tree may contain child
> >> nodes with compatible "qcom,fastrpc-compute-cb", each representing one
> >> IOMMU context bank. The driver enumerates those child nodes during
> >> RPMsg probe and creates a corresponding device on the qda-compute-cb
> >> bus for each one.
> >>
> >> The CB devices are created via create_qda_cb_device(), which registers
> >> them on the qda-compute-cb bus so that the IOMMU subsystem assigns each
> >> device its own IOMMU domain, enabling per-session address space
> >> isolation for DSP buffer mapping.
> >>
> >> The new qda_cb.c file provides two functions:
> >>
> >>   qda_create_cb_device()
> >>     Reads the "reg" property from the DT child node to obtain the
> >>     stream ID, constructs a unique device name of the form
> >>     "qda-cb-<dsp>-<sid>", and registers the device on the compute bus.
> >>     A qda_cb_dev entry is allocated and appended to qdev->cb_devs so
> >>     that the list can be walked during teardown.
> >>
> >>   qda_destroy_cb_device()
> >>     Removes the device from its IOMMU group before calling
> >>     device_unregister(), ensuring the IOMMU domain is released cleanly.
> >>
> >> CB devices are populated before the DRM device is registered and
> >> destroyed before it is unplugged, so no DRM operation can race with
> >> CB teardown. On probe failure after population, qda_cb_unpopulate()
> >> is called to clean up any CBs that were successfully created before
> >> the error.
> >>
> >> Assisted-by: Claude:claude-4-6-sonnet
> >> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> >> ---
> >>  drivers/accel/qda/Makefile    |  1 +
> >>  drivers/accel/qda/qda_cb.c    | 99 +++++++++++++++++++++++++++++++++++++++++++
> >>  drivers/accel/qda/qda_cb.h    | 32 ++++++++++++++
> >>  drivers/accel/qda/qda_drv.c   |  1 +
> >>  drivers/accel/qda/qda_drv.h   |  3 ++
> >>  drivers/accel/qda/qda_rpmsg.c | 12 +++++-
> >>  6 files changed, 147 insertions(+), 1 deletion(-)
> >> @@ -59,9 +61,17 @@ static int qda_rpmsg_probe(struct rpmsg_device *rpdev)
> >>  	}
> >>  	qdev->dsp_name = label;
> >>  
> >> +	ret = qda_cb_populate(qdev, rpdev->dev.of_node);
> >> +	if (ret) {
> >> +		dev_err(qdev->dev, "Failed to populate child devices: %d\n", ret);
> >> +		return ret;
> >> +	}
> >> +
> >>  	ret = qda_register_device(qdev);
> >> -	if (ret)
> >> +	if (ret) {
> >> +		qda_cb_unpopulate(qdev);
> >>  		return ret;
> > 
> > Unwinding registration?
> did I miss something here? The intention to free up the CB devices in
> case the device registration fails.>

Don't you need to unwind anything else?

> >> +	}
> >>  
> >>  	drm_info(&qdev->drm_dev, "QDA RPMsg probe complete for %s\n", qdev->dsp_name);
> >>  	return 0;
> >>
> >> -- 
> >> 2.34.1
> >>
> >>
> > 
> 

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
