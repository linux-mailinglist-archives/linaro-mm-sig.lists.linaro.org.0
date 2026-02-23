Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uAw4CPwT4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:53:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BA9412145
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:53:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 981E244DDD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:53:14 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id D65773F803
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:41:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=UqxJBeZr;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=QthpDRwA;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NIHmqa322185
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:41:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=AyHH7QcVrx7/d/Pc5HmpEFyc
	TB7iy4eLl8RPthi6BKQ=; b=UqxJBeZrdU/+HWoz57Jsz5OGQVVAWwhBjkkReBnM
	znYBmNaTaRZGpuZhz7FyFz+WMKoWazbntOR+ec/5k/EJVTBMqgTMcgo7rFv0h8Iw
	XdOhutI9faQnvYCkm6mP+1Kd6PUqlMPkM8s8XwwBmRVS4g5u5yQUOdKMmQtYMgzi
	ZFyxbQT2h5UlRY/O5RUWPPxnMKT7wj4bAzCzT5ovcR01y2uay4wfuENWyM56LLaB
	HewbVsGgnFFTIQHaCasjtePqb0Ad+WJthHI8w3QeISWAww3VujFiKji1G4ot6uw0
	1yteuL+sy6paHYOY5NXaN6D4btbz4lVrj3tv6Ix0oKOFsA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn8y24c7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:41:49 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb403842b6so4986421185a.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 14:41:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771886509; x=1772491309; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AyHH7QcVrx7/d/Pc5HmpEFycTB7iy4eLl8RPthi6BKQ=;
        b=QthpDRwA2X7qRdI5z6NaUroYS4a5E4PtoRIFF8QYCTxbYclSC60LUYKEzisA/NZLr2
         BfQdW9Ug/nmABEOIe37PQpdrIiCsZaVpGRdWhKajTXwVV0UQHLFv56Z8zdA8QFBwtQbX
         C2y7CGZEJIWf3cfZyzi5LjwpEe6tfMPqazmRi0fesr1ZxprW6Ka8aT+staUQGRW7/z5x
         VhWwjI5Y/6gOtV2RXzmj0CGZwlZLFl2ql8Pti6A7rgAD8eJzn/KAd/tW7TeFJgfARl1Y
         6FIkBaYevFp93tOqfcCqq2iBPZtYw2C1se6a+pkg1Gl1I5CEbl734qclhCAdp1g1yKsg
         /qew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771886509; x=1772491309;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AyHH7QcVrx7/d/Pc5HmpEFycTB7iy4eLl8RPthi6BKQ=;
        b=uZrqewtIBwqrmr0bHSO5pKJFdZLUlhPsr9Kh/iUuEbiggR9MKN1pKVRzjPeQMOWcP/
         8Xs6iH11o92cZodggx+qPAedkyKtRWLZlt53mB7i9/7SW3hyGxNHc6NahDJWHzCYhB0Z
         XaKixyZ5QHfRBSCfihtg+sMzPI/P98Gy+7YZ8EGcZHZXYXRsiP5MBcPEZW/H2g3q58Yb
         p/wK5fcNSSySFldTW/BOTnGtM9Xwh6IabH+qpxzMJREybLSast+dRMTE/aSoqAg49a1W
         KJtrlRsbc3OOdKcKJlQBVOgSGvMl+BrD7v/NniwnOXBldxfFqsePwjPnDNPmiCxe3NMC
         3Obw==
X-Forwarded-Encrypted: i=1; AJvYcCVHsN3/jTqLj/A2ko7WbooqJHaA3F0/6pCZkmdtKgc03NBWxDIkp/cFyLgd7SddaNfUl5RPvVBmJqSN/v0D@lists.linaro.org
X-Gm-Message-State: AOJu0Yw3ZaCSmOqAlf/wQy+XmV4mtsZhz5jwQYGZmRv5ZhHMiN1YZQj+
	o87oO32uC+Ey8/z48458WPEYJfcqLVPVmZAoTJ4bMPu6rresgzZ6Vu59UwZVZfRPAU87movetee
	2Uee1pfQO4Oe+7QzMdlgyDFukjtyEO2kE3gzoAxmvQh3oixzVYaM5RmMZhauNX5o8yg862Q==
X-Gm-Gg: AZuq6aI5tE6nFNUe059zbCgfwq9qreHT3PoymQXQKnK0WSOVw6wN5NLFmeNQfATEDLs
	bj4cmxNu51/vG6LqLX5Cm+fUv2/eHL4fF5HO6HgU2vQpEPvuuyeg5isA84F5qWG6ZSLrbjNECKp
	+Lsjc81l2bp8jNXRiw+dUU6pyVhI5eRm/6QBqAGYQS/yLwNY4VzZMpow9tfm3pCtPj3YFg1L1hd
	S0xgTT1B/JjRyGkEPYQxv0SpHZ1OnUeaJqd0a56phv09DjbCl9lz6+3fRZxRm46WJCFx/r8eSIq
	4cKkOC0BH/4VSRL4qKoyfI/b0VAaMKU00ai8vfH25wCg4yIz9wb64oT4GhGFJwybIv7/YqadxkH
	jBmseqZredy2gUXxeVq7dm2EnTVJ6yt91TUoFshO9nJ6cV6jp2eq5VZJQ+URD1QSWXlO9Z+LdNc
	XHZalkDfeITAGXKdDz2qA/GkyQfFvVQ7CKgnQ=
X-Received: by 2002:a05:620a:440f:b0:8b2:d72d:e41c with SMTP id af79cd13be357-8cb8c9d2d25mr1211392985a.5.1771886508700;
        Mon, 23 Feb 2026 14:41:48 -0800 (PST)
X-Received: by 2002:a05:620a:440f:b0:8b2:d72d:e41c with SMTP id af79cd13be357-8cb8c9d2d25mr1211390585a.5.1771886508209;
        Mon, 23 Feb 2026 14:41:48 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb4cbf5sm1818985e87.91.2026.02.23.14.41.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 14:41:47 -0800 (PST)
Date: Tue, 24 Feb 2026 00:41:44 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Message-ID: <x3ebegi74hx3a2okxnjipgsrgkbncmtwnusxtv7mc66nfih2qu@jdxc4ry2n2gb>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-3-fe46a9c1a046@oss.qualcomm.com>
 <tqsdbijgjomrn7fq3sdz7v2axwxqvbccpjh4fmvod4kbrq7pod@af3igw5dx66p>
 <lyco6vkfjlerri55ldyn6fbhihbkhnuolifddcnscevybsztq7@ljhjln2ynmid>
 <r7eko65ua2ofyejqf6ipnh6jm4s76f4mqy6a4msgmlraz4xuec@uymfzc65dbng>
 <oe4ho45dxtwjjjsqj6nd4op3gh7dz2pqwsuuhgqpdbf5hym645@smg3g4evqmge>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <oe4ho45dxtwjjjsqj6nd4op3gh7dz2pqwsuuhgqpdbf5hym645@smg3g4evqmge>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE5NyBTYWx0ZWRfX5EeiNvDuRhJa
 RmoL0YkrVhRZqY8BDe7pgtBFQSvcIYFnW0ZQJZviTsmT07B+mK2T9jQwxryOimceEmHadr3KNOF
 Ulp+gW37nazYPkqGOtyitkziphTWZaUHCRvNCLRzEBGvSawrLkYy2Rv0JFazwPEuEJUxaUiyjKx
 GQ9K++OCbqTP8/jTSCIyiU48ecOeJ7c7uhdWjT/XgAk+konhrLzBCt+ZOGaxRYY27Bbj5aZeKKS
 pyq8yk2SWdAQlXP8WmYDqXOyEQpwe4+JpM4sZbqTPP/ppfPvwmOldqXnY6rVWWu1Ut0RCOxK6y6
 W3BgnoJT6k3Eh3kpgqmAJkBNZ/dgCP3+2a1dT2sVAuj6sbkwmt+7Gy89/mzlXI5vNdoLNoFvCs7
 6XSXVKJnAn0T60rmEoyzdMhrH2qipgpTtLUiw+3RMWD0hx8LdZbRI7kqzLrjWcbryoAOLkYAQNk
 ykwzVvTs+zZ4fuys2Zg==
X-Authority-Analysis: v=2.4 cv=edYwvrEH c=1 sm=1 tr=0 ts=699cd7ad cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=-Sm6rUxn0lnaPTpFYlgA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: tH0Eoz19ayjXDLy_2eLtsJobc4RXPXUz
X-Proofpoint-ORIG-GUID: tH0Eoz19ayjXDLy_2eLtsJobc4RXPXUz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_05,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 phishscore=0 clxscore=1015 priorityscore=1501
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230197
X-Spamd-Bar: ---
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: D33BKUYMTDVD7OFHGGQKNLN23VTK3N2Z
X-Message-ID-Hash: D33BKUYMTDVD7OFHGGQKNLN23VTK3N2Z
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:54 +0000
CC: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>, Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 03/18] accel/qda: Add RPMsg transport for Qualcomm DSP accelerator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D33BKUYMTDVD7OFHGGQKNLN23VTK3N2Z/>
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
	DATE_IN_PAST(1.00)[1242];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.linaro.org,quicinc.com];
	RCPT_COUNT_TWELVE(0.00)[25];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: D1BA9412145
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Feb 23, 2026 at 04:25:08PM -0600, Bjorn Andersson wrote:
> On Tue, Feb 24, 2026 at 12:12:32AM +0200, Dmitry Baryshkov wrote:
> > On Mon, Feb 23, 2026 at 03:50:32PM -0600, Bjorn Andersson wrote:
> > > On Mon, Feb 23, 2026 at 11:23:13PM +0200, Dmitry Baryshkov wrote:
> > > > On Tue, Feb 24, 2026 at 12:38:57AM +0530, Ekansh Gupta wrote:
> > > [..]
> > > > > diff --git a/drivers/accel/qda/qda_drv.h b/drivers/accel/qda/qda_drv.h
> > > [..]
> > > > > +/* Error logging - always logs and tracks errors */
> > > > > +#define qda_err(qdev, fmt, ...) do { \
> > > > > +	struct device *__dev = qda_get_log_device(qdev); \
> > > > > +	if (__dev) \
> > > > > +		dev_err(__dev, "[%s] " fmt, __func__, ##__VA_ARGS__); \
> > > > > +	else \
> > > > > +		pr_err(DRIVER_NAME ": [%s] " fmt, __func__, ##__VA_ARGS__); \
> > > > 
> > > > What /why? You are under drm, so you can use drm_* helpers instead.
> > > > 
> > > 
> > > In particular, rather than rolling our own wrappers around standard
> > > functions, just use dev_err() whenever you have a struct device. And for
> > > something like fastrpc - life starts at some probe() and ends at some
> > > remove() so that should be always.
> > 
> > I'd say differently. For the DRM devices the life cycle is centered
> > around the DRM device (which can outlive platform device for multiple
> > reasons). So, please start by registering the DRM accel device and using
> > it for all the logging (and btw for private data management too).
> > 
> 
> There are no platform_devices here, but tomato tomato... What defines
> the life cycle of the DRM device then? Might it linger because clients
> are holding open handles to it?

Yes.

> 
> Note that the fastrpc service is coming and going, as the remoteproc
> starts and stops.

Even one more reason to use drm_device for life cycle management
instead of manually inventing the wheel.

> 
> Regards,
> Bjorn
> 
> > > 
> > > Regards,
> > > Bjorn
> > 
> > -- 
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
